import pandas as pd

import keras

from keras.models import Sequential
model = Sequential()

from keras.layers import Dense, Activation, Conv2D, MaxPooling2D, Flatten, Dropout

people = pd.read_csv('/Users/Bera/Documents/Columbia/Clubs/Hackathons/YHacks/people.csv')
train = people.ix[0:599,0:13].values.astype('int32')
test = people.ix[0:599,14:17].values.astype('int32')
x_val = people.ix[599:999,0:13].values.astype('int32')
y_val = people.ix[599:999,14:17].values.astype('int32')
model.add(Conv2D(4, (1, 4), activation='relu', input_shape=(1, 10)))
model.add(Dense(4, activation='relu'))
model.compile(loss='binary_crossentropy', optimizer='rmsprop')

for row in train:
    model.fit(train, test, batch_size=32, epochs=10, validation_data=(x_val, y_val))


# this is Raymond's shit
