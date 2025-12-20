@global_var_6bcb0 = external constant [21 x i8]
@global_var_6bcc8 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c068 = external local_unnamed_addr global i32
@global_var_9c2c8 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_2f326:
  %stack_var_-32.0.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_9c068, align 4
  %1 = icmp eq i32 %0, 0
  store i32 0, ptr %stack_var_-32.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_2f38d, label %dec_label_pc_2f344

dec_label_pc_2f344:                               ; preds = %dec_label_pc_2f326
  %2 = call i32 @rand()
  %3 = urem i32 %2, 2
  %4 = icmp eq i32 %3, 0
  %5 = call i32 @rand()
  %6 = mul i32 %5, 1073741824
  %7 = call i32 @rand()
  %8 = mul i32 %7, 32768
  %9 = xor i32 %8, %6
  %10 = call i32 @rand()
  %11 = xor i32 %9, %10
  %12 = sext i1 %4 to i32
  %storemerge.in = xor i32 %11, %12
  store i32 %storemerge.in, ptr %stack_var_-32.0.reg2mem, align 4
  br label %dec_label_pc_2f38d

dec_label_pc_2f38d:                               ; preds = %dec_label_pc_2f344, %dec_label_pc_2f326
  %13 = load i32, ptr @global_var_9c2c8, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %dec_label_pc_2f3a8, label %dec_label_pc_2f397

dec_label_pc_2f397:                               ; preds = %dec_label_pc_2f38d
  call void @printLine(ptr @global_var_6bcb0)
  br label %dec_label_pc_2f3da

dec_label_pc_2f3a8:                               ; preds = %dec_label_pc_2f38d
  %stack_var_-32.0.reload = load i32, ptr %stack_var_-32.0.reg2mem, align 4
  %15 = icmp eq i32 %stack_var_-32.0.reload, 0
  br i1 %15, label %dec_label_pc_2f3da, label %dec_label_pc_2f3ae

dec_label_pc_2f3ae:                               ; preds = %dec_label_pc_2f3a8
  %16 = icmp ult i32 %stack_var_-32.0.reload, 2147483647
  br i1 %16, label %dec_label_pc_2f3b7, label %dec_label_pc_2f3cb

dec_label_pc_2f3b7:                               ; preds = %dec_label_pc_2f3ae
  %17 = mul i32 %stack_var_-32.0.reload, 2
  call void @printUnsignedLine(i32 %17)
  br label %dec_label_pc_2f3da

dec_label_pc_2f3cb:                               ; preds = %dec_label_pc_2f3ae
  call void @printLine(ptr @global_var_6bcc8)
  br label %dec_label_pc_2f3da

dec_label_pc_2f3da:                               ; preds = %dec_label_pc_2f3cb, %dec_label_pc_2f3b7, %dec_label_pc_2f3a8, %dec_label_pc_2f397
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_54bd7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_54bfa, label %dec_label_pc_54bee

dec_label_pc_54bee:                               ; preds = %dec_label_pc_54bd7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_54bfa

dec_label_pc_54bfa:                               ; preds = %dec_label_pc_54bee, %dec_label_pc_54bd7
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

