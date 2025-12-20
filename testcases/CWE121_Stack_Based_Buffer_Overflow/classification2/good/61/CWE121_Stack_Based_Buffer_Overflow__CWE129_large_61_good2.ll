@global_var_b7658 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_2f7a4:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @anon0(i32 -1)
  %2 = icmp ugt i32 %1, 9
  br i1 %2, label %dec_label_pc_2f839, label %dec_label_pc_2f807

dec_label_pc_2f807:                               ; preds = %dec_label_pc_2f7a4
  %3 = ptrtoint ptr %stack_var_-8 to i64
  %4 = sext i32 %1 to i64
  %5 = mul i64 %4, 4
  %6 = add i64 %3, -48
  %7 = add i64 %5, %6
  %8 = inttoptr i64 %7 to ptr
  store i32 1, ptr %8, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_2f81d

dec_label_pc_2f81d:                               ; preds = %dec_label_pc_2f81d, %dec_label_pc_2f807
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %9 = mul i64 %indvars.iv.reload, 4
  %10 = add i64 %9, %6
  %11 = inttoptr i64 %10 to ptr
  %12 = load i32, ptr %11, align 4
  call void @printIntLine(i32 %12)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2f848, label %dec_label_pc_2f81d

dec_label_pc_2f839:                               ; preds = %dec_label_pc_2f7a4
  call void @printLine(ptr @global_var_b7658)
  br label %dec_label_pc_2f848

dec_label_pc_2f848:                               ; preds = %dec_label_pc_2f81d, %dec_label_pc_2f839
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_2f85d, label %dec_label_pc_2f858

dec_label_pc_2f858:                               ; preds = %dec_label_pc_2f848
  call void @__stack_chk_fail()
  br label %dec_label_pc_2f85d

dec_label_pc_2f85d:                               ; preds = %dec_label_pc_2f858, %dec_label_pc_2f848
  ret void
}

define i32 @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_2f8ac:
  ret i32 10
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

declare i64 @__readfsqword(i64) local_unnamed_addr

