@global_var_b6974 = external constant [3 x i8]
@global_var_b6998 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr

define void @anon2() local_unnamed_addr {
dec_label_pc_26d32:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 -1, ptr %stack_var_-20, align 4
  %1 = load ptr, ptr @global_var_ef090, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_b6974, ptr nonnull %stack_var_-20)
  %3 = load i32, ptr %stack_var_-20, align 4
  call void @anon0(i32 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_26d95, label %dec_label_pc_26d90

dec_label_pc_26d90:                               ; preds = %dec_label_pc_26d32
  call void @__stack_chk_fail()
  br label %dec_label_pc_26d95

dec_label_pc_26d95:                               ; preds = %dec_label_pc_26d90, %dec_label_pc_26d32
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_26dee:
  call void @anon1(i32 %data)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_26f52:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = icmp ugt i32 %data, 9
  br i1 %1, label %dec_label_pc_26fd6, label %dec_label_pc_26fa4

dec_label_pc_26fa4:                               ; preds = %dec_label_pc_26f52
  %2 = ptrtoint ptr %stack_var_-8 to i64
  %3 = sext i32 %data to i64
  %4 = mul i64 %3, 4
  %5 = add i64 %2, -48
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i32 1, ptr %7, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_26fba

dec_label_pc_26fba:                               ; preds = %dec_label_pc_26fba, %dec_label_pc_26fa4
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %8 = mul i64 %indvars.iv.reload, 4
  %9 = add i64 %8, %5
  %10 = inttoptr i64 %9 to ptr
  %11 = load i32, ptr %10, align 4
  call void @printIntLine(i32 %11)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_26fe5, label %dec_label_pc_26fba

dec_label_pc_26fd6:                               ; preds = %dec_label_pc_26f52
  call void @printLine(ptr @global_var_b6998)
  br label %dec_label_pc_26fe5

dec_label_pc_26fe5:                               ; preds = %dec_label_pc_26fba, %dec_label_pc_26fd6
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_26ffa, label %dec_label_pc_26ff5

dec_label_pc_26ff5:                               ; preds = %dec_label_pc_26fe5
  call void @__stack_chk_fail()
  br label %dec_label_pc_26ffa

dec_label_pc_26ffa:                               ; preds = %dec_label_pc_26ff5, %dec_label_pc_26fe5
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

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

