@global_var_72520 = external constant [4 x i8]
@global_var_72528 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_20785:
  %stack_var_-22 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-22, align 2
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_207d8, label %dec_label_pc_207b4

dec_label_pc_207b4:                               ; preds = %dec_label_pc_20785
  %3 = load ptr, ptr @global_var_a9080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_72520, ptr nonnull %stack_var_-22)
  br label %dec_label_pc_207de

dec_label_pc_207d8:                               ; preds = %dec_label_pc_20785
  store i16 2, ptr %stack_var_-22, align 2
  br label %dec_label_pc_207de

dec_label_pc_207de:                               ; preds = %dec_label_pc_207d8, %dec_label_pc_207b4
  %5 = call i32 @globalReturnsTrueOrFalse()
  %6 = icmp eq i32 %5, 0
  %7 = load i16, ptr %stack_var_-22, align 2
  %8 = icmp slt i16 %7, 1
  br i1 %6, label %dec_label_pc_2080c, label %dec_label_pc_207ec

dec_label_pc_207ec:                               ; preds = %dec_label_pc_207de
  br i1 %8, label %dec_label_pc_20845, label %dec_label_pc_207f5

dec_label_pc_207f5:                               ; preds = %dec_label_pc_207ec
  %9 = mul i16 %7, 2
  %10 = sext i16 %9 to i32
  call void @printIntLine(i32 %10)
  br label %dec_label_pc_20845

dec_label_pc_2080c:                               ; preds = %dec_label_pc_207de
  br i1 %8, label %dec_label_pc_20845, label %dec_label_pc_20815

dec_label_pc_20815:                               ; preds = %dec_label_pc_2080c
  %11 = icmp sgt i16 %7, 16382
  br i1 %11, label %dec_label_pc_20836, label %dec_label_pc_2081f

dec_label_pc_2081f:                               ; preds = %dec_label_pc_20815
  %12 = mul i16 %7, 2
  %13 = sext i16 %12 to i32
  call void @printIntLine(i32 %13)
  br label %dec_label_pc_20845

dec_label_pc_20836:                               ; preds = %dec_label_pc_20815
  call void @printLine(ptr @global_var_72528)
  br label %dec_label_pc_20845

dec_label_pc_20845:                               ; preds = %dec_label_pc_20836, %dec_label_pc_2081f, %dec_label_pc_2080c, %dec_label_pc_207f5, %dec_label_pc_207ec
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_2085a, label %dec_label_pc_20855

dec_label_pc_20855:                               ; preds = %dec_label_pc_20845
  call void @__stack_chk_fail()
  br label %dec_label_pc_2085a

dec_label_pc_2085a:                               ; preds = %dec_label_pc_20855, %dec_label_pc_20845
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

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

