@global_var_b8338 = external constant [32 x i8]
@global_var_c0760 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_3df39:
  %stack_var_-40 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-40 to ptr
  call void @anon0(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_3df89, label %dec_label_pc_3df84

dec_label_pc_3df84:                               ; preds = %dec_label_pc_3df39
  call void @__stack_chk_fail()
  br label %dec_label_pc_3df89

dec_label_pc_3df89:                               ; preds = %dec_label_pc_3df84, %dec_label_pc_3df39
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_3e1bc:
  %indvars.iv.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %dataArray to i64
  %stack_var_-8 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  %4 = load i32, ptr %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %dec_label_pc_3e245, label %dec_label_pc_3e213

dec_label_pc_3e213:                               ; preds = %dec_label_pc_3e1bc
  %6 = ptrtoint ptr %stack_var_-8 to i64
  %7 = sext i32 %4 to i64
  %8 = mul i64 %7, 4
  %9 = add i64 %6, -48
  %10 = add i64 %8, %9
  %11 = inttoptr i64 %10 to ptr
  store i32 1, ptr %11, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_3e229

dec_label_pc_3e229:                               ; preds = %dec_label_pc_3e229, %dec_label_pc_3e213
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %12 = mul i64 %indvars.iv.reload, 4
  %13 = add i64 %12, %9
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3e254, label %dec_label_pc_3e229

dec_label_pc_3e245:                               ; preds = %dec_label_pc_3e1bc
  call void @printLine(ptr @global_var_b8338)
  br label %dec_label_pc_3e254

dec_label_pc_3e254:                               ; preds = %dec_label_pc_3e229, %dec_label_pc_3e245
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %1, %16
  br i1 %17, label %dec_label_pc_3e269, label %dec_label_pc_3e264

dec_label_pc_3e264:                               ; preds = %dec_label_pc_3e254
  call void @__stack_chk_fail()
  br label %dec_label_pc_3e269

dec_label_pc_3e269:                               ; preds = %dec_label_pc_3e264, %dec_label_pc_3e254
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

