@global_var_705b8 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a901c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_fe14:
  %0 = load i32, ptr @global_var_a901c, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_feb9, label %dec_label_pc_fe7c

dec_label_pc_fe7c:                                ; preds = %dec_label_pc_fe14
  %3 = call i32 @rand()
  %4 = urem i32 %3, 2
  %5 = icmp eq i32 %4, 0
  %6 = call i32 @rand()
  %7 = mul i32 %6, 1073741824
  %8 = call i32 @rand()
  %9 = mul i32 %8, 32768
  %10 = xor i32 %9, %7
  %11 = call i32 @rand()
  %12 = xor i32 %10, %11
  %13 = sext i1 %5 to i32
  %storemerge.in = xor i32 %12, %13
  %14 = load i32, ptr @global_var_a901c, align 4
  %15 = icmp eq i32 %14, 5
  %16 = icmp eq i1 %15, false
  %17 = icmp slt i32 %storemerge.in, 1
  %or.cond = or i1 %16, %17
  br i1 %or.cond, label %dec_label_pc_feb9, label %dec_label_pc_fe8d

dec_label_pc_fe8d:                                ; preds = %dec_label_pc_fe7c
  %18 = icmp sgt i32 %storemerge.in, 1073741822
  br i1 %18, label %dec_label_pc_feaa, label %dec_label_pc_fe96

dec_label_pc_fe96:                                ; preds = %dec_label_pc_fe8d
  %19 = mul i32 %storemerge.in, 2
  call void @printIntLine(i32 %19)
  br label %dec_label_pc_feb9

dec_label_pc_feaa:                                ; preds = %dec_label_pc_fe8d
  call void @printLine(ptr @global_var_705b8)
  br label %dec_label_pc_feb9

dec_label_pc_feb9:                                ; preds = %dec_label_pc_fe14, %dec_label_pc_feaa, %dec_label_pc_fe96, %dec_label_pc_fe7c
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

