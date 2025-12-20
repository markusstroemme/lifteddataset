@global_var_75690 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_366e9:
  %storemerge4.reg2mem = alloca i32, align 4
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  store i32 2, ptr %storemerge4.reg2mem, align 4
  br i1 %1, label %dec_label_pc_36752, label %dec_label_pc_3670a

dec_label_pc_3670a:                               ; preds = %dec_label_pc_366e9
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
  br label %dec_label_pc_36752

dec_label_pc_36752:                               ; preds = %dec_label_pc_366e9, %dec_label_pc_3670a
  %storemerge4.reload = load i32, ptr %storemerge4.reg2mem, align 4
  %12 = call i32 @globalReturnsTrueOrFalse()
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %dec_label_pc_36778, label %dec_label_pc_36760

dec_label_pc_36760:                               ; preds = %dec_label_pc_36752
  %14 = mul i32 %storemerge4.reload, 65536
  %sext2 = add i32 %14, 65536
  %15 = ashr exact i32 %sext2, 16
  call void @printIntLine(i32 %15)
  br label %dec_label_pc_367a7

dec_label_pc_36778:                               ; preds = %dec_label_pc_36752
  %16 = trunc i32 %storemerge4.reload to i16
  %17 = icmp eq i16 %16, 32767
  br i1 %17, label %dec_label_pc_36798, label %dec_label_pc_36780

dec_label_pc_36780:                               ; preds = %dec_label_pc_36778
  %18 = mul i32 %storemerge4.reload, 65536
  %sext3 = add i32 %18, 65536
  %19 = ashr exact i32 %sext3, 16
  call void @printIntLine(i32 %19)
  br label %dec_label_pc_367a7

dec_label_pc_36798:                               ; preds = %dec_label_pc_36778
  call void @printLine(ptr @global_var_75690)
  br label %dec_label_pc_367a7

dec_label_pc_367a7:                               ; preds = %dec_label_pc_36798, %dec_label_pc_36780, %dec_label_pc_36760
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5ddfb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5de1e, label %dec_label_pc_5de12

dec_label_pc_5de12:                               ; preds = %dec_label_pc_5ddfb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5de1e

dec_label_pc_5de1e:                               ; preds = %dec_label_pc_5de12, %dec_label_pc_5ddfb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_5e329:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

