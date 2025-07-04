---
title: Demo
emoji: ⭐
colorFrom: purple
colorTo: purple
sdk: gradio
sdk_version: 5.30.0
app_file: app.py
pinned: false
license: cc
---




# hugging-face-demo

⭐ Demo d'application basée sur Hugging Face et Gradio

[![CI : Sync to Hugging Face hub](https://github.com/Blessed-joseph/hugging-face-demo/actions/workflows/main.yml/badge.svg)](https://github.com/Blessed-joseph/hugging-face-demo/actions/workflows/main.yml)

[Try Demo Text Summarization Here](https://huggingface.co/spaces/Blessed-Joseph/demo2)

## Description

Ce projet propose une application simple de résumé de texte utilisant un modèle de la bibliothèque [Hugging Face Transformers](https://huggingface.co/transformers/) intégrée dans une interface [Gradio](https://gradio.app/). Il suffit de saisir votre texte et l'application génère automatiquement un résumé.

## Fonctionnalités

- Résumé automatique de textes longs en français ou en anglais.
- Interface web simple grâce à Gradio.
- Déploiement possible sur Hugging Face Spaces.

## Prérequis

- Python ≥ 3.8

## Installation

```bash
git clone https://github.com/Blessed-joseph/hugging-face-demo.git
cd hugging-face-demo
pip install -r requirements.txt
```

## Utilisation

```bash
python app.py
```
L'interface Gradio sera accessible via un lien généré dans votre terminal.

## Fichiers principaux

- `app.py` : Code principal de l'application Gradio, utilisant le pipeline de résumé Hugging Face.
- `requirements.txt` : Dépendances Python nécessaires.
- `Makefile` : Commandes utiles pour l'installation, le formatage, le linting, et le lancement des tests.

## Exemple de code (`app.py`)

```python
from transformers import pipeline
import gradio as gr

model =  pipeline("summarization")

def predict(prompt):
    summary = model(prompt)[0]['summary_text']
    return summary

with gr.Blocks() as demo:
    textbox = gr.Textbox(placeholder="Enter text to summarize here...", lines = 4)
    gr.Interface(fn=predict, inputs=textbox, outputs="text")

demo.launch(share=True)
```

## Licence

Ce projet est sous licence Creative Commons CC0 1.0 Universal (domaine public).

## Auteur

[Blessed-joseph](https://github.com/Blessed-joseph)
