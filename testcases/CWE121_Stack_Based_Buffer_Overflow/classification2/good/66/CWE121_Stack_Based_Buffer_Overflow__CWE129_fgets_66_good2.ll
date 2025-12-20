@global_var_b5e9c = external constant [16 x i8]
@global_var_b5ed0 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_1f9fd:
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_ef090, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_1fa62, label %dec_label_pc_1fa51

dec_label_pc_1fa51:                               ; preds = %dec_label_pc_1f9fd
  %5 = call i32 @atoi(ptr nonnull %2)
  br label %dec_label_pc_1fa71

dec_label_pc_1fa62:                               ; preds = %dec_label_pc_1f9fd
  call void @printLine(ptr @global_var_b5e9c)
  br label %dec_label_pc_1fa71

dec_label_pc_1fa71:                               ; preds = %dec_label_pc_1fa62, %dec_label_pc_1fa51
  %6 = bitcast ptr %stack_var_-56 to ptr
  call void @anon0(ptr nonnull %6)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_1fa98, label %dec_label_pc_1fa93

dec_label_pc_1fa93:                               ; preds = %dec_label_pc_1fa71
  call void @__stack_chk_fail()
  br label %dec_label_pc_1fa98

dec_label_pc_1fa98:                               ; preds = %dec_label_pc_1fa93, %dec_label_pc_1fa71
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_1fc17:
  %indvars.iv.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %dataArray to i64
  %stack_var_-8 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 9
  br i1 %5, label %dec_label_pc_1fca6, label %dec_label_pc_1fc74

dec_label_pc_1fc74:                               ; preds = %dec_label_pc_1fc17
  %6 = ptrtoint ptr %stack_var_-8 to i64
  %7 = sext i32 %4 to i64
  %8 = mul i64 %7, 4
  %9 = add i64 %6, -48
  %10 = add i64 %8, %9
  %11 = inttoptr i64 %10 to ptr
  store i32 1, ptr %11, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_1fc8a

dec_label_pc_1fc8a:                               ; preds = %dec_label_pc_1fc8a, %dec_label_pc_1fc74
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %12 = mul i64 %indvars.iv.reload, 4
  %13 = add i64 %12, %9
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1fcb5, label %dec_label_pc_1fc8a

dec_label_pc_1fca6:                               ; preds = %dec_label_pc_1fc17
  call void @printLine(ptr @global_var_b5ed0)
  br label %dec_label_pc_1fcb5

dec_label_pc_1fcb5:                               ; preds = %dec_label_pc_1fc8a, %dec_label_pc_1fca6
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %1, %16
  br i1 %17, label %dec_label_pc_1fcca, label %dec_label_pc_1fcc5

dec_label_pc_1fcc5:                               ; preds = %dec_label_pc_1fcb5
  call void @__stack_chk_fail()
  br label %dec_label_pc_1fcca

dec_label_pc_1fcca:                               ; preds = %dec_label_pc_1fcc5, %dec_label_pc_1fcb5
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

