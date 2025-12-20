@global_var_72368 = external constant [4 x i8]
@global_var_72388 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr
@global_var_a9034 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1fa7c:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = load i32, ptr @global_var_a9034, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_1fb0e, label %dec_label_pc_1faca

dec_label_pc_1faca:                               ; preds = %dec_label_pc_1fa7c
  %4 = load ptr, ptr @global_var_a9080, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_72368, ptr nonnull %stack_var_-20)
  %.pr = load i16, ptr %stack_var_-20, align 2
  %6 = load i32, ptr @global_var_a9034, align 4
  %7 = icmp eq i32 %6, 5
  %8 = icmp eq i1 %7, false
  %9 = icmp slt i16 %.pr, 1
  %or.cond = or i1 %9, %8
  br i1 %or.cond, label %dec_label_pc_1fb0e, label %dec_label_pc_1fade

dec_label_pc_1fade:                               ; preds = %dec_label_pc_1faca
  %10 = icmp sgt i16 %.pr, 16382
  br i1 %10, label %dec_label_pc_1faff, label %dec_label_pc_1fae8

dec_label_pc_1fae8:                               ; preds = %dec_label_pc_1fade
  %11 = mul i16 %.pr, 2
  %12 = sext i16 %11 to i32
  call void @printIntLine(i32 %12)
  br label %dec_label_pc_1fb0e

dec_label_pc_1faff:                               ; preds = %dec_label_pc_1fade
  call void @printLine(ptr @global_var_72388)
  br label %dec_label_pc_1fb0e

dec_label_pc_1fb0e:                               ; preds = %dec_label_pc_1fa7c, %dec_label_pc_1faff, %dec_label_pc_1fae8, %dec_label_pc_1faca
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_1fb23, label %dec_label_pc_1fb1e

dec_label_pc_1fb1e:                               ; preds = %dec_label_pc_1fb0e
  call void @__stack_chk_fail()
  br label %dec_label_pc_1fb23

dec_label_pc_1fb23:                               ; preds = %dec_label_pc_1fb1e, %dec_label_pc_1fb0e
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

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

