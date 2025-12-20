@global_var_70510 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9018 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_f87a:
  %0 = load i32, ptr @global_var_a9018, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_f91d, label %dec_label_pc_f8e1

dec_label_pc_f8e1:                                ; preds = %dec_label_pc_f87a
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
  %13 = load i32, ptr @global_var_a9018, align 4
  %14 = icmp eq i32 %13, 0
  %15 = icmp slt i32 %storemerge.in, 1
  %or.cond = or i1 %14, %15
  br i1 %or.cond, label %dec_label_pc_f91d, label %dec_label_pc_f8f1

dec_label_pc_f8f1:                                ; preds = %dec_label_pc_f8e1
  %16 = icmp sgt i32 %storemerge.in, 1073741822
  br i1 %16, label %dec_label_pc_f90e, label %dec_label_pc_f8fa

dec_label_pc_f8fa:                                ; preds = %dec_label_pc_f8f1
  %17 = mul i32 %storemerge.in, 2
  call void @printIntLine(i32 %17)
  br label %dec_label_pc_f91d

dec_label_pc_f90e:                                ; preds = %dec_label_pc_f8f1
  call void @printLine(ptr @global_var_70510)
  br label %dec_label_pc_f91d

dec_label_pc_f91d:                                ; preds = %dec_label_pc_f87a, %dec_label_pc_f90e, %dec_label_pc_f8fa, %dec_label_pc_f8e1
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

