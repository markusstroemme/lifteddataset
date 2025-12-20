@global_var_72fc0 = external constant [4 x i8]
@global_var_72fc8 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_25c8b:
  %stack_var_-22 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-22, align 2
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = load ptr, ptr @global_var_a9080, align 8
  %3 = call i32 (ptr, ptr, ...) @fscanf(ptr %2, ptr @global_var_72fc0, ptr nonnull %stack_var_-22)
  %4 = call i32 @globalReturnsTrueOrFalse()
  %5 = icmp eq i32 %4, 0
  %6 = load i16, ptr %stack_var_-22, align 2
  %7 = sub i16 0, %6
  %8 = icmp slt i16 %7, 0
  %9 = icmp eq i1 %8, false
  %.v1 = select i1 %9, i16 %7, i16 %6
  %10 = icmp ult i16 %.v1, 182
  br i1 %5, label %dec_label_pc_25d4f, label %dec_label_pc_25d0e

dec_label_pc_25d0e:                               ; preds = %dec_label_pc_25c8b
  br i1 %10, label %dec_label_pc_25d20, label %dec_label_pc_25d3e

dec_label_pc_25d20:                               ; preds = %dec_label_pc_25d0e
  %11 = mul i16 %6, %6
  %12 = sext i16 %11 to i32
  call void @printIntLine(i32 %12)
  br label %dec_label_pc_25d8e

dec_label_pc_25d3e:                               ; preds = %dec_label_pc_25d0e
  call void @printLine(ptr @global_var_72fc8)
  br label %dec_label_pc_25d8e

dec_label_pc_25d4f:                               ; preds = %dec_label_pc_25c8b
  br i1 %10, label %dec_label_pc_25d61, label %dec_label_pc_25d7f

dec_label_pc_25d61:                               ; preds = %dec_label_pc_25d4f
  %13 = mul i16 %6, %6
  %14 = sext i16 %13 to i32
  call void @printIntLine(i32 %14)
  br label %dec_label_pc_25d8e

dec_label_pc_25d7f:                               ; preds = %dec_label_pc_25d4f
  call void @printLine(ptr @global_var_72fc8)
  br label %dec_label_pc_25d8e

dec_label_pc_25d8e:                               ; preds = %dec_label_pc_25d7f, %dec_label_pc_25d61, %dec_label_pc_25d3e, %dec_label_pc_25d20
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  br i1 %16, label %dec_label_pc_25da3, label %dec_label_pc_25d9e

dec_label_pc_25d9e:                               ; preds = %dec_label_pc_25d8e
  call void @__stack_chk_fail()
  br label %dec_label_pc_25da3

dec_label_pc_25da3:                               ; preds = %dec_label_pc_25d9e, %dec_label_pc_25d8e
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

