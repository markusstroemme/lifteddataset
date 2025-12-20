@global_var_b4ef0 = external constant [32 x i8]
@global_var_c0760 = external constant [4 x i8]

define void @anon4() local_unnamed_addr {
dec_label_pc_143db:
  call void @anon0(i32 7)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_14555:
  call void @anon1(i32 %data)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_145a9:
  call void @anon2(i32 %data)
  ret void
}

define void @anon2(i32 %data) local_unnamed_addr {
dec_label_pc_145fd:
  call void @anon3(i32 %data)
  ret void
}

define void @anon3(i32 %data) local_unnamed_addr {
dec_label_pc_146d9:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = icmp slt i32 %data, 0
  br i1 %1, label %dec_label_pc_14757, label %dec_label_pc_14725

dec_label_pc_14725:                               ; preds = %dec_label_pc_146d9
  %2 = ptrtoint ptr %stack_var_-8 to i64
  %3 = sext i32 %data to i64
  %4 = mul i64 %3, 4
  %5 = add i64 %2, -48
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i32 1, ptr %7, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_1473b

dec_label_pc_1473b:                               ; preds = %dec_label_pc_1473b, %dec_label_pc_14725
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %8 = mul i64 %indvars.iv.reload, 4
  %9 = add i64 %8, %5
  %10 = inttoptr i64 %9 to ptr
  %11 = load i32, ptr %10, align 4
  call void @printIntLine(i32 %11)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_14766, label %dec_label_pc_1473b

dec_label_pc_14757:                               ; preds = %dec_label_pc_146d9
  call void @printLine(ptr @global_var_b4ef0)
  br label %dec_label_pc_14766

dec_label_pc_14766:                               ; preds = %dec_label_pc_1473b, %dec_label_pc_14757
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_1477b, label %dec_label_pc_14776

dec_label_pc_14776:                               ; preds = %dec_label_pc_14766
  call void @__stack_chk_fail()
  br label %dec_label_pc_1477b

dec_label_pc_1477b:                               ; preds = %dec_label_pc_14776, %dec_label_pc_14766
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

declare i64 @__readfsqword(i64) local_unnamed_addr

