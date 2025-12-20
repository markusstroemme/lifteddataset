@global_var_75690 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_367ae:
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %6 = mul i32 %5, 32768
  %7 = call i32 @rand()
  %8 = xor i32 %7, %6
  %9 = sext i1 %3 to i32
  %storemerge6.in = xor i32 %8, %9
  %storemerge5.in = mul i32 %storemerge6.in, 65536
  %10 = call i32 @globalReturnsTrueOrFalse()
  %11 = icmp eq i32 %10, 0
  %12 = trunc i32 %storemerge6.in to i16
  %13 = icmp eq i16 %12, 32767
  br i1 %11, label %dec_label_pc_36890, label %dec_label_pc_3685f

dec_label_pc_3685f:                               ; preds = %dec_label_pc_367ae
  br i1 %13, label %dec_label_pc_3687f, label %dec_label_pc_36867

dec_label_pc_36867:                               ; preds = %dec_label_pc_3685f
  %sext2 = add i32 %storemerge5.in, 65536
  %14 = ashr exact i32 %sext2, 16
  call void @printIntLine(i32 %14)
  br label %dec_label_pc_368bf

dec_label_pc_3687f:                               ; preds = %dec_label_pc_3685f
  call void @printLine(ptr @global_var_75690)
  br label %dec_label_pc_368bf

dec_label_pc_36890:                               ; preds = %dec_label_pc_367ae
  br i1 %13, label %dec_label_pc_368b0, label %dec_label_pc_36898

dec_label_pc_36898:                               ; preds = %dec_label_pc_36890
  %sext3 = add i32 %storemerge5.in, 65536
  %15 = ashr exact i32 %sext3, 16
  call void @printIntLine(i32 %15)
  br label %dec_label_pc_368bf

dec_label_pc_368b0:                               ; preds = %dec_label_pc_36890
  call void @printLine(ptr @global_var_75690)
  br label %dec_label_pc_368bf

dec_label_pc_368bf:                               ; preds = %dec_label_pc_368b0, %dec_label_pc_36898, %dec_label_pc_3687f, %dec_label_pc_36867
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

