/*
  Q Light Controller Plus
  RenderSelectionBoxesFilter.qml

  Copyright (c) Eric Arnebäck

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0.txt

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
*/


import Qt3D.Core 2.0
import Qt3D.Render 2.0

import QtQuick 2.0

LayerFilter
{
    property alias layer: layerFilter.layers
    property alias gBuffer: gBufferTargetSelector.target

    id: layerFilter

    RenderTargetSelector
    {
        id: gBufferTargetSelector

        RenderPassFilter
        {
            matchAny: FilterKey { name: "pass"; value: "geometry" }
        }
    }
}