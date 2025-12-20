@global_var_b5ce4 = external constant [16 x i8]
@global_var_b5cf8 = external constant [32 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_1e653:
  %stack_var_-36.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_ef090, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_1e6b8, label %dec_label_pc_1e6a7

dec_label_pc_1e6a7:                               ; preds = %dec_label_pc_1e653
  %5 = call i32 @atoi(ptr nonnull %2)
  store i32 %5, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_1e6c7

dec_label_pc_1e6b8:                               ; preds = %dec_label_pc_1e653
  call void @printLine(ptr @global_var_b5ce4)
  store i32 -1, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_1e6c7

dec_label_pc_1e6c7:                               ; preds = %dec_label_pc_1e6b8, %dec_label_pc_1e6a7
  %stack_var_-36.0.reload = load i32, ptr %stack_var_-36.0.reg2mem, align 4
  call void @anon1(i32 %stack_var_-36.0.reload)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_1e6e6, label %dec_label_pc_1e6e1

dec_label_pc_1e6e1:                               ; preds = %dec_label_pc_1e6c7
  call void @__stack_chk_fail()
  br label %dec_label_pc_1e6e6

dec_label_pc_1e6e6:                               ; preds = %dec_label_pc_1e6e1, %dec_label_pc_1e6c7
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_1e7c3:
  call void @anon2(i32 %data)
  ret void
}

define void @anon2(i32 %data) local_unnamed_addr {
dec_label_pc_1e817:
  call void @anon3(i32 %data)
  ret void
}

define void @anon3(i32 %data) local_unnamed_addr {
dec_label_pc_1e86b:
  call void @anon4(i32 %data)
  ret void
}

define void @anon4(i32 %data) local_unnamed_addr {
dec_label_pc_1e8bf:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = icmp slt i32 %data, 0
  br i1 %1, label %dec_label_pc_1e93d, label %dec_label_pc_1e90b

dec_label_pc_1e90b:                               ; preds = %dec_label_pc_1e8bf
  %2 = ptrtoint ptr %stack_var_-8 to i64
  %3 = sext i32 %data to i64
  %4 = mul i64 %3, 4
  %5 = add i64 %2, -48
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i32 1, ptr %7, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_1e921

dec_label_pc_1e921:                               ; preds = %dec_label_pc_1e921, %dec_label_pc_1e90b
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %8 = mul i64 %indvars.iv.reload, 4
  %9 = add i64 %8, %5
  %10 = inttoptr i64 %9 to ptr
  %11 = load i32, ptr %10, align 4
  call void @printIntLine(i32 %11)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1e94c, label %dec_label_pc_1e921

dec_label_pc_1e93d:                               ; preds = %dec_label_pc_1e8bf
  call void @printLine(ptr @global_var_b5cf8)
  br label %dec_label_pc_1e94c

dec_label_pc_1e94c:                               ; preds = %dec_label_pc_1e921, %dec_label_pc_1e93d
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_1e961, label %dec_label_pc_1e95c

dec_label_pc_1e95c:                               ; preds = %dec_label_pc_1e94c
  call void @__stack_chk_fail()
  br label %dec_label_pc_1e961

dec_label_pc_1e961:                               ; preds = %dec_label_pc_1e95c, %dec_label_pc_1e94c
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

