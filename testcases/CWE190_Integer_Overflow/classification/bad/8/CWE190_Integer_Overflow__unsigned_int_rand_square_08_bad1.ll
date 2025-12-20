@global_var_70d9e = external constant [4 x i8]

define i32 @staticReturnsTrue.1196() local_unnamed_addr {
dec_label_pc_3424c:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_3426a:
  %stack_var_-32.0.reg2mem = alloca i32, align 4
  %0 = call i32 @staticReturnsTrue.1196()
  %1 = icmp eq i32 %0, 0
  store i32 0, ptr %stack_var_-32.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_342d5, label %dec_label_pc_3428c

dec_label_pc_3428c:                               ; preds = %dec_label_pc_3426a
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
  br label %dec_label_pc_342d5

dec_label_pc_342d5:                               ; preds = %dec_label_pc_3428c, %dec_label_pc_3426a
  %13 = call i32 @staticReturnsTrue.1196()
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %dec_label_pc_342f6, label %dec_label_pc_342e3

dec_label_pc_342e3:                               ; preds = %dec_label_pc_342d5
  %stack_var_-32.0.reload = load i32, ptr %stack_var_-32.0.reg2mem, align 4
  %15 = mul i32 %stack_var_-32.0.reload, %stack_var_-32.0.reload
  call void @printUnsignedLine(i32 %15)
  br label %dec_label_pc_342f6

dec_label_pc_342f6:                               ; preds = %dec_label_pc_342e3, %dec_label_pc_342d5
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

