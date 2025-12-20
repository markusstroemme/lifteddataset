@global_var_b8f38 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_479da:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @rand()
  %2 = call i32 @rand()
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = bitcast ptr %stack_var_-56 to ptr
  call void @anon0(ptr nonnull %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_47a6d, label %dec_label_pc_47a68

dec_label_pc_47a68:                               ; preds = %dec_label_pc_479da
  call void @__stack_chk_fail()
  br label %dec_label_pc_47a6d

dec_label_pc_47a6d:                               ; preds = %dec_label_pc_47a68, %dec_label_pc_479da
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_47bf0:
  %indvars.iv.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %dataArray to i64
  %stack_var_-8 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 9
  br i1 %5, label %dec_label_pc_47c7f, label %dec_label_pc_47c4d

dec_label_pc_47c4d:                               ; preds = %dec_label_pc_47bf0
  %6 = ptrtoint ptr %stack_var_-8 to i64
  %7 = sext i32 %4 to i64
  %8 = mul i64 %7, 4
  %9 = add i64 %6, -48
  %10 = add i64 %8, %9
  %11 = inttoptr i64 %10 to ptr
  store i32 1, ptr %11, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_47c63

dec_label_pc_47c63:                               ; preds = %dec_label_pc_47c63, %dec_label_pc_47c4d
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %12 = mul i64 %indvars.iv.reload, 4
  %13 = add i64 %12, %9
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_47c8e, label %dec_label_pc_47c63

dec_label_pc_47c7f:                               ; preds = %dec_label_pc_47bf0
  call void @printLine(ptr @global_var_b8f38)
  br label %dec_label_pc_47c8e

dec_label_pc_47c8e:                               ; preds = %dec_label_pc_47c63, %dec_label_pc_47c7f
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %1, %16
  br i1 %17, label %dec_label_pc_47ca3, label %dec_label_pc_47c9e

dec_label_pc_47c9e:                               ; preds = %dec_label_pc_47c8e
  call void @__stack_chk_fail()
  br label %dec_label_pc_47ca3

dec_label_pc_47ca3:                               ; preds = %dec_label_pc_47c9e, %dec_label_pc_47c8e
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

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

