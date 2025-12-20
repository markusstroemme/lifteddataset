@global_var_70568 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_fa8a:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = mul i32 %3, 1073741824
  %5 = call i32 @rand()
  %6 = mul i32 %5, 32768
  %7 = xor i32 %6, %4
  %8 = call i32 @rand()
  %9 = xor i32 %7, %8
  %10 = sext i1 %2 to i32
  %storemerge.in = xor i32 %9, %10
  %11 = icmp slt i32 %storemerge.in, 1
  br i1 %11, label %dec_label_pc_fb3e, label %dec_label_pc_fb12

dec_label_pc_fb12:                                ; preds = %dec_label_pc_fa8a
  %12 = icmp sgt i32 %storemerge.in, 1073741822
  br i1 %12, label %dec_label_pc_fb2f, label %dec_label_pc_fb1b

dec_label_pc_fb1b:                                ; preds = %dec_label_pc_fb12
  %13 = mul i32 %storemerge.in, 2
  call void @printIntLine(i32 %13)
  br label %dec_label_pc_fb3e

dec_label_pc_fb2f:                                ; preds = %dec_label_pc_fb12
  call void @printLine(ptr @global_var_70568)
  br label %dec_label_pc_fb3e

dec_label_pc_fb3e:                                ; preds = %dec_label_pc_fb2f, %dec_label_pc_fb1b, %dec_label_pc_fa8a
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

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

