@global_var_b5590 = external constant [16 x i8]
@global_var_b55c0 = external constant [21 x i8]
@global_var_b55d8 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_1994e:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-80.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  store i32 -1, ptr %stack_var_-80.0.reg2mem, align 4
  br i1 %2, label %dec_label_pc_199d0, label %dec_label_pc_1997e

dec_label_pc_1997e:                               ; preds = %dec_label_pc_1994e
  store i64 0, ptr %stack_var_-30, align 8
  %3 = load ptr, ptr @global_var_ef090, align 8
  %4 = bitcast ptr %stack_var_-30 to ptr
  %5 = call ptr @fgets(ptr nonnull %4, i32 14, ptr %3)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %dec_label_pc_199c1, label %dec_label_pc_199b0

dec_label_pc_199b0:                               ; preds = %dec_label_pc_1997e
  %7 = call i32 @atoi(ptr nonnull %4)
  store i32 %7, ptr %stack_var_-80.0.reg2mem, align 4
  br label %dec_label_pc_199d0

dec_label_pc_199c1:                               ; preds = %dec_label_pc_1997e
  call void @printLine(ptr @global_var_b5590)
  store i32 -1, ptr %stack_var_-80.0.reg2mem, align 4
  br label %dec_label_pc_199d0

dec_label_pc_199d0:                               ; preds = %dec_label_pc_199c1, %dec_label_pc_199b0, %dec_label_pc_1994e
  %8 = call i32 @globalReturnsFalse()
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %dec_label_pc_199ef, label %dec_label_pc_199de

dec_label_pc_199de:                               ; preds = %dec_label_pc_199d0
  call void @printLine(ptr @global_var_b55c0)
  br label %dec_label_pc_19a66

dec_label_pc_199ef:                               ; preds = %dec_label_pc_199d0
  %stack_var_-80.0.reload = load i32, ptr %stack_var_-80.0.reg2mem, align 4
  %10 = icmp ugt i32 %stack_var_-80.0.reload, 9
  br i1 %10, label %dec_label_pc_19a55, label %dec_label_pc_19a23

dec_label_pc_19a23:                               ; preds = %dec_label_pc_199ef
  %11 = ptrtoint ptr %stack_var_-8 to i64
  %12 = sext i32 %stack_var_-80.0.reload to i64
  %13 = mul i64 %12, 4
  %14 = add i64 %11, -64
  %15 = add i64 %13, %14
  %16 = inttoptr i64 %15 to ptr
  store i32 1, ptr %16, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_19a39

dec_label_pc_19a39:                               ; preds = %dec_label_pc_19a39, %dec_label_pc_19a23
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %17 = mul i64 %indvars.iv.reload, 4
  %18 = add i64 %17, %14
  %19 = inttoptr i64 %18 to ptr
  %20 = load i32, ptr %19, align 4
  call void @printIntLine(i32 %20)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_19a66, label %dec_label_pc_19a39

dec_label_pc_19a55:                               ; preds = %dec_label_pc_199ef
  call void @printLine(ptr @global_var_b55d8)
  br label %dec_label_pc_19a66

dec_label_pc_19a66:                               ; preds = %dec_label_pc_19a39, %dec_label_pc_19a55, %dec_label_pc_199de
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %0, %21
  br i1 %22, label %dec_label_pc_19a7b, label %dec_label_pc_19a76

dec_label_pc_19a76:                               ; preds = %dec_label_pc_19a66
  call void @__stack_chk_fail()
  br label %dec_label_pc_19a7b

dec_label_pc_19a7b:                               ; preds = %dec_label_pc_19a76, %dec_label_pc_19a66
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_a0bcb:
  ret i32 1
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_a0bda:
  ret i32 0
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

