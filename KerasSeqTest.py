
from keras.models import Sequential
model = Sequential()

from keras.layers import Dense, Activation,Conv2D,MaxPooling2D,Flatten,Dropout

model.add(Conv2D(32, (3, 3), activation='relu', input_shape=(224, 224, 3)))

model.add(MaxPooling2D(pool_size=(2, 2)))

model.add(Dense(256, activation='relu'))

model.add(Dropout(0.5))

model.add(Flatten())

model.compile(loss='binary_crossentropy', optimizer='rmsprop')

model.fit(x_train, y_train, batch_size=32, epochs=10,validation_data=(x_val, y_val))

score = model.evaluate(x_test, y_test, batch_size=32)
