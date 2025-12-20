@global_var_8a470 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_58ce0:
  %storemerge4.reg2mem = alloca i32, align 4
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  store i32 2, ptr %storemerge4.reg2mem, align 4
  br i1 %1, label %dec_label_pc_58d49, label %dec_label_pc_58d01

dec_label_pc_58d01:                               ; preds = %dec_label_pc_58ce0
  %2 = call i32 @rand()
  %3 = urem i32 %2, 2
  %4 = icmp eq i32 %3, 0
  %5 = call i32 @rand()
  %6 = call i32 @rand()
  %7 = mul i32 %6, 32768
  %8 = call i32 @rand()
  %9 = xor i32 %8, %7
  %10 = sext i1 %4 to i32
  %storemerge.in = xor i32 %9, %10
  %sext = mul i32 %storemerge.in, 65536
  %11 = ashr exact i32 %sext, 16
  store i32 %11, ptr %storemerge4.reg2mem, align 4
  br label %dec_label_pc_58d49

dec_label_pc_58d49:                               ; preds = %dec_label_pc_58ce0, %dec_label_pc_58d01
  %storemerge4.reload = load i32, ptr %storemerge4.reg2mem, align 4
  %12 = call i32 @globalReturnsTrueOrFalse()
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %dec_label_pc_58d77, label %dec_label_pc_58d57

dec_label_pc_58d57:                               ; preds = %dec_label_pc_58d49
  %14 = mul i32 %storemerge4.reload, 65536
  %sext2 = add i32 %14, 65536
  %15 = ashr exact i32 %sext2, 16
  call void @printIntLine(i32 %15)
  br label %dec_label_pc_58dae

dec_label_pc_58d77:                               ; preds = %dec_label_pc_58d49
  %16 = trunc i32 %storemerge4.reload to i16
  %17 = icmp eq i16 %16, 32767
  br i1 %17, label %dec_label_pc_58d9f, label %dec_label_pc_58d7f

dec_label_pc_58d7f:                               ; preds = %dec_label_pc_58d77
  %18 = mul i32 %storemerge4.reload, 65536
  %sext3 = add i32 %18, 65536
  %19 = ashr exact i32 %sext3, 16
  call void @printIntLine(i32 %19)
  br label %dec_label_pc_58dae

dec_label_pc_58d9f:                               ; preds = %dec_label_pc_58d77
  call void @printLine(ptr @global_var_8a470)
  br label %dec_label_pc_58dae

dec_label_pc_58dae:                               ; preds = %dec_label_pc_58d9f, %dec_label_pc_58d7f, %dec_label_pc_58d57
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_6a678:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

