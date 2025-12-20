@global_var_b5ce4 = external constant [16 x i8]
@global_var_b5d18 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr

define void @anon4() local_unnamed_addr {
dec_label_pc_1e70f:
  %stack_var_-36.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_ef090, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_1e774, label %dec_label_pc_1e763

dec_label_pc_1e763:                               ; preds = %dec_label_pc_1e70f
  %5 = call i32 @atoi(ptr nonnull %2)
  store i32 %5, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_1e783

dec_label_pc_1e774:                               ; preds = %dec_label_pc_1e70f
  call void @printLine(ptr @global_var_b5ce4)
  store i32 -1, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_1e783

dec_label_pc_1e783:                               ; preds = %dec_label_pc_1e774, %dec_label_pc_1e763
  %stack_var_-36.0.reload = load i32, ptr %stack_var_-36.0.reg2mem, align 4
  call void @anon0(i32 %stack_var_-36.0.reload)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_1e7a2, label %dec_label_pc_1e79d

dec_label_pc_1e79d:                               ; preds = %dec_label_pc_1e783
  call void @__stack_chk_fail()
  br label %dec_label_pc_1e7a2

dec_label_pc_1e7a2:                               ; preds = %dec_label_pc_1e79d, %dec_label_pc_1e783
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_1e7fb:
  call void @anon1(i32 %data)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_1e84f:
  call void @anon2(i32 %data)
  ret void
}

define void @anon2(i32 %data) local_unnamed_addr {
dec_label_pc_1e8a3:
  call void @anon3(i32 %data)
  ret void
}

define void @anon3(i32 %data) local_unnamed_addr {
dec_label_pc_1ea07:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = icmp ugt i32 %data, 9
  br i1 %1, label %dec_label_pc_1ea8b, label %dec_label_pc_1ea59

dec_label_pc_1ea59:                               ; preds = %dec_label_pc_1ea07
  %2 = ptrtoint ptr %stack_var_-8 to i64
  %3 = sext i32 %data to i64
  %4 = mul i64 %3, 4
  %5 = add i64 %2, -48
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i32 1, ptr %7, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_1ea6f

dec_label_pc_1ea6f:                               ; preds = %dec_label_pc_1ea6f, %dec_label_pc_1ea59
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %8 = mul i64 %indvars.iv.reload, 4
  %9 = add i64 %8, %5
  %10 = inttoptr i64 %9 to ptr
  %11 = load i32, ptr %10, align 4
  call void @printIntLine(i32 %11)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1ea9a, label %dec_label_pc_1ea6f

dec_label_pc_1ea8b:                               ; preds = %dec_label_pc_1ea07
  call void @printLine(ptr @global_var_b5d18)
  br label %dec_label_pc_1ea9a

dec_label_pc_1ea9a:                               ; preds = %dec_label_pc_1ea6f, %dec_label_pc_1ea8b
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_1eaaf, label %dec_label_pc_1eaaa

dec_label_pc_1eaaa:                               ; preds = %dec_label_pc_1ea9a
  call void @__stack_chk_fail()
  br label %dec_label_pc_1eaaf

dec_label_pc_1eaaf:                               ; preds = %dec_label_pc_1eaaa, %dec_label_pc_1ea9a
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

