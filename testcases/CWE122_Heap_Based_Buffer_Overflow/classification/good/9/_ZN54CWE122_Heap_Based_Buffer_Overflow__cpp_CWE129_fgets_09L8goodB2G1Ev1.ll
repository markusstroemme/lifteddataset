@global_var_aa7a0 = external constant [16 x i8]
@global_var_aa7e8 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc090 = external local_unnamed_addr global ptr

define i64 @anon0() local_unnamed_addr {
dec_label_pc_28532:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %stack_var_-48.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_dc090, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_285a6, label %dec_label_pc_28595

dec_label_pc_28595:                               ; preds = %dec_label_pc_28532
  %7 = call i32 @atoi(ptr nonnull %2)
  store i32 %7, ptr %stack_var_-48.0.reg2mem, align 4
  br label %dec_label_pc_285d3

dec_label_pc_285a6:                               ; preds = %dec_label_pc_28532
  call void @printLine(ptr @global_var_aa7a0)
  store i32 -1, ptr %stack_var_-48.0.reg2mem, align 4
  br label %dec_label_pc_285d3

dec_label_pc_285d3:                               ; preds = %dec_label_pc_28595, %dec_label_pc_285a6
  %stack_var_-48.0.reload = load i32, ptr %stack_var_-48.0.reg2mem, align 4
  %8 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br label %dec_label_pc_285ea

dec_label_pc_285ea:                               ; preds = %dec_label_pc_285ea, %dec_label_pc_285d3
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %9 = mul i64 %indvars.iv5.reload, 4
  %10 = add i64 %9, %8
  %11 = inttoptr i64 %10 to ptr
  store i32 0, ptr %11, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_2860e, label %dec_label_pc_285ea

dec_label_pc_2860e:                               ; preds = %dec_label_pc_285ea
  %12 = icmp ugt i32 %stack_var_-48.0.reload, 9
  br i1 %12, label %dec_label_pc_28666, label %dec_label_pc_2861a

dec_label_pc_2861a:                               ; preds = %dec_label_pc_2860e
  %13 = sext i32 %stack_var_-48.0.reload to i64
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %8
  %16 = inttoptr i64 %15 to ptr
  store i32 1, ptr %16, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_2863d

dec_label_pc_2863d:                               ; preds = %dec_label_pc_2863d, %dec_label_pc_2861a
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %17 = mul i64 %indvars.iv.reload, 4
  %18 = add i64 %17, %8
  %19 = inttoptr i64 %18 to ptr
  %20 = load i32, ptr %19, align 4
  call void @printIntLine(i32 %20)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_28675, label %dec_label_pc_2863d

dec_label_pc_28666:                               ; preds = %dec_label_pc_2860e
  call void @printLine(ptr @global_var_aa7e8)
  br label %dec_label_pc_28675

dec_label_pc_28675:                               ; preds = %dec_label_pc_2863d, %dec_label_pc_28666
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %dec_label_pc_28688, label %dec_label_pc_2867c

dec_label_pc_2867c:                               ; preds = %dec_label_pc_28675
  %22 = inttoptr i64 %8 to ptr
  call void @_ZdaPv(ptr %22, ptr inttoptr (i64 14 to ptr))
  br label %dec_label_pc_28688

dec_label_pc_28688:                               ; preds = %dec_label_pc_2867c, %dec_label_pc_28675
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %0, %23
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %24, label %dec_label_pc_2869d, label %dec_label_pc_28698

dec_label_pc_28698:                               ; preds = %dec_label_pc_28688
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2869d

dec_label_pc_2869d:                               ; preds = %dec_label_pc_28698, %dec_label_pc_28688
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_91bc4:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_91be7, label %dec_label_pc_91bdb

dec_label_pc_91bdb:                               ; preds = %dec_label_pc_91bc4
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_91be7

dec_label_pc_91be7:                               ; preds = %dec_label_pc_91bdb, %dec_label_pc_91bc4
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_91c1f:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_b1f38, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

