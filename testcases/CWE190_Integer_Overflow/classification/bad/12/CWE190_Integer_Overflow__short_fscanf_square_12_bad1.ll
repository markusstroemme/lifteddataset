@global_var_72fc0 = external constant [4 x i8]
@global_var_72fc8 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_25bb0:
  %stack_var_-22 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-22, align 2
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_25c03, label %dec_label_pc_25bdf

dec_label_pc_25bdf:                               ; preds = %dec_label_pc_25bb0
  %3 = load ptr, ptr @global_var_a9080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_72fc0, ptr nonnull %stack_var_-22)
  br label %dec_label_pc_25c09

dec_label_pc_25c03:                               ; preds = %dec_label_pc_25bb0
  store i16 2, ptr %stack_var_-22, align 2
  br label %dec_label_pc_25c09

dec_label_pc_25c09:                               ; preds = %dec_label_pc_25c03, %dec_label_pc_25bdf
  %5 = call i32 @globalReturnsTrueOrFalse()
  %6 = icmp eq i32 %5, 0
  %7 = load i16, ptr %stack_var_-22, align 2
  br i1 %6, label %dec_label_pc_25c35, label %dec_label_pc_25c17

dec_label_pc_25c17:                               ; preds = %dec_label_pc_25c09
  %8 = mul i16 %7, %7
  %9 = sext i16 %8 to i32
  call void @printIntLine(i32 %9)
  br label %dec_label_pc_25c74

dec_label_pc_25c35:                               ; preds = %dec_label_pc_25c09
  %10 = sub i16 0, %7
  %11 = icmp slt i16 %10, 0
  %12 = icmp eq i1 %11, false
  %.v = select i1 %12, i16 %10, i16 %7
  %13 = icmp ult i16 %.v, 182
  br i1 %13, label %dec_label_pc_25c47, label %dec_label_pc_25c65

dec_label_pc_25c47:                               ; preds = %dec_label_pc_25c35
  %14 = mul i16 %7, %7
  %15 = sext i16 %14 to i32
  call void @printIntLine(i32 %15)
  br label %dec_label_pc_25c74

dec_label_pc_25c65:                               ; preds = %dec_label_pc_25c35
  call void @printLine(ptr @global_var_72fc8)
  br label %dec_label_pc_25c74

dec_label_pc_25c74:                               ; preds = %dec_label_pc_25c65, %dec_label_pc_25c47, %dec_label_pc_25c17
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  br i1 %17, label %dec_label_pc_25c89, label %dec_label_pc_25c84

dec_label_pc_25c84:                               ; preds = %dec_label_pc_25c74
  call void @__stack_chk_fail()
  br label %dec_label_pc_25c89

dec_label_pc_25c89:                               ; preds = %dec_label_pc_25c84, %dec_label_pc_25c74
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

