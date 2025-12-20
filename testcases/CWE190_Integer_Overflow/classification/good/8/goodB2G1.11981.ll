@global_var_6c590 = external constant [21 x i8]
@global_var_6c5a8 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define i32 @staticReturnsTrue.1196() local_unnamed_addr {
dec_label_pc_3424c:
  ret i32 1
}

define i32 @staticReturnsFalse.1197() local_unnamed_addr {
dec_label_pc_3425b:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_342fd:
  %stack_var_-32.0.reg2mem = alloca i32, align 4
  %0 = call i32 @staticReturnsTrue.1196()
  %1 = icmp eq i32 %0, 0
  store i32 0, ptr %stack_var_-32.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_34368, label %dec_label_pc_3431f

dec_label_pc_3431f:                               ; preds = %dec_label_pc_342fd
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
  br label %dec_label_pc_34368

dec_label_pc_34368:                               ; preds = %dec_label_pc_3431f, %dec_label_pc_342fd
  %13 = call i32 @staticReturnsFalse.1197()
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %dec_label_pc_34387, label %dec_label_pc_34376

dec_label_pc_34376:                               ; preds = %dec_label_pc_34368
  call void @printLine(ptr @global_var_6c590)
  br label %dec_label_pc_343c0

dec_label_pc_34387:                               ; preds = %dec_label_pc_34368
  %stack_var_-32.0.reload = load i32, ptr %stack_var_-32.0.reg2mem, align 4
  %stack_var_-32.0.off = add i32 %stack_var_-32.0.reload, 65534
  %15 = icmp ugt i32 %stack_var_-32.0.off, 131068
  br i1 %15, label %dec_label_pc_343b1, label %dec_label_pc_3439b

dec_label_pc_3439b:                               ; preds = %dec_label_pc_34387
  %16 = mul i32 %stack_var_-32.0.reload, %stack_var_-32.0.reload
  call void @printUnsignedLine(i32 %16)
  br label %dec_label_pc_343c0

dec_label_pc_343b1:                               ; preds = %dec_label_pc_34387
  call void @printLine(ptr @global_var_6c5a8)
  br label %dec_label_pc_343c0

dec_label_pc_343c0:                               ; preds = %dec_label_pc_343b1, %dec_label_pc_3439b, %dec_label_pc_34376
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

