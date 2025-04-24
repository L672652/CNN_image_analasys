#!/usr/bin/env python
# coding: utf-8

# In[2]:


import os
import numpy as np
from flask import Flask, flash, request, redirect, url_for
from werkzeug.utils import secure_filename
from flask import send_from_directory
from PIL import Image
import tensorflow as tf
from tensorflow.keras import datasets, layers, models
from numpy import asarray
allowedextentions = "jpg"

app = Flask(__name__)
app.config["UPLOAD_FOLDER"] = "UploadedImages"
labels = ["Annual Crop","Forest","Herbaceous Vegetation", "Highway", "Industrial", "Pasture", "Permanent Crop", "Residential", "River", "Sealake"]
satmodel = tf.keras.models.load_model("SateliteModel")

def allowed(file):
    if(file.split(".")[1]==allowedextentions):
        return True
    else:
        return False

@app.route("/", methods=["GET","POST"])
def analysefile():
    if request.method=="POST":
        file = request.files["file"]
        if file and allowed(file.filename):
            name = secure_filename(file.filename)
            file.save(os.path.join(app.config["UPLOAD_FOLDER"],name))
            theimage = Image.open(os.path.join(app.config["UPLOAD_FOLDER"],name))
            theimage.resize((64,64))
            print(file)
            arrayimage = []
            arrayimage.append(asarray(theimage))
            arrayimage = np.array(arrayimage)/255
            print(arrayimage)
            thenumbers = satmodel.predict(arrayimage)
            prediction = 0
            counter = -1
            prevbiggest = 0
            for i in thenumbers[0]:
                counter=counter+1
                if i > prevbiggest:
                    prevbiggest=i
                    prediction=counter
            return labels[prediction]
    print("TEST")
    return """
        <!doctype html>
        <h1>Last opp fil for analysering<h1>
        <p>Husk filen må være jpg, uheldigvis</p>
        <form method=post enctype=multipart/form-data>
            <input type=file name=file id=file>
            <input type=submit value=Send inn filen>
        </form> 
        """


            
           
    





