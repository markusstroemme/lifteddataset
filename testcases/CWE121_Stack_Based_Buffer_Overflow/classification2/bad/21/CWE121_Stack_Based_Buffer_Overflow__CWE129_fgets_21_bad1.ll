@global_var_b5898 = external constant [32 x i8]
@global_var_b58b8 = external constant [16 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr
@global_var_ef0dc = external local_unnamed_addr global i32

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_1ba0c:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef0dc, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_1baa3, label %dec_label_pc_1ba34

dec_label_pc_1ba34:                               ; preds = %dec_label_pc_1ba0c
  %3 = icmp slt i32 %data, 0
  br i1 %3, label %dec_label_pc_1ba94, label %dec_label_pc_1ba62

dec_label_pc_1ba62:                               ; preds = %dec_label_pc_1ba34
  %4 = ptrtoint ptr %stack_var_-8 to i64
  %5 = sext i32 %data to i64
  %6 = mul i64 %5, 4
  %7 = add i64 %4, -48
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 1, ptr %9, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_1ba78

dec_label_pc_1ba78:                               ; preds = %dec_label_pc_1ba78, %dec_label_pc_1ba62
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %10 = mul i64 %indvars.iv.reload, 4
  %11 = add i64 %10, %7
  %12 = inttoptr i64 %11 to ptr
  %13 = load i32, ptr %12, align 4
  call void @printIntLine(i32 %13)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1baa3, label %dec_label_pc_1ba78

dec_label_pc_1ba94:                               ; preds = %dec_label_pc_1ba34
  call void @printLine(ptr @global_var_b5898)
  br label %dec_label_pc_1baa3

dec_label_pc_1baa3:                               ; preds = %dec_label_pc_1ba78, %dec_label_pc_1ba94, %dec_label_pc_1ba0c
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_1bab8, label %dec_label_pc_1bab3

dec_label_pc_1bab3:                               ; preds = %dec_label_pc_1baa3
  call void @__stack_chk_fail()
  br label %dec_label_pc_1bab8

dec_label_pc_1bab8:                               ; preds = %dec_label_pc_1bab3, %dec_label_pc_1baa3
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_1baba:
  %stack_var_-36.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_ef090, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_1bb1f, label %dec_label_pc_1bb0e

dec_label_pc_1bb0e:                               ; preds = %dec_label_pc_1baba
  %5 = call i32 @atoi(ptr nonnull %2)
  store i32 %5, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_1bb2e

dec_label_pc_1bb1f:                               ; preds = %dec_label_pc_1baba
  call void @printLine(ptr @global_var_b58b8)
  store i32 -1, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_1bb2e

dec_label_pc_1bb2e:                               ; preds = %dec_label_pc_1bb1f, %dec_label_pc_1bb0e
  %stack_var_-36.0.reload = load i32, ptr %stack_var_-36.0.reg2mem, align 4
  store i32 1, ptr @global_var_ef0dc, align 4
  call void @anon1(i32 %stack_var_-36.0.reload)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_1bb57, label %dec_label_pc_1bb52

dec_label_pc_1bb52:                               ; preds = %dec_label_pc_1bb2e
  call void @__stack_chk_fail()
  br label %dec_label_pc_1bb57

dec_label_pc_1bb57:                               ; preds = %dec_label_pc_1bb52, %dec_label_pc_1bb2e
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_a0716:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_c0760, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

