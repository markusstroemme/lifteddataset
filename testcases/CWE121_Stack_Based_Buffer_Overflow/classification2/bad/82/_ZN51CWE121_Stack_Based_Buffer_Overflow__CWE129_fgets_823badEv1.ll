@global_var_bcc35 = external constant [16 x i8]
@global_var_ee5b0 = external global i64
@0 = external global i32
@global_var_ef090 = external local_unnamed_addr global ptr
@global_var_edfa0 = external global %vtable_edfa0_type

define i64 @anon0() local_unnamed_addr {
dec_label_pc_7d550:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-46 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-46, align 8
  %1 = load ptr, ptr @global_var_ef090, align 8
  %2 = bitcast ptr %stack_var_-46 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_7d5bb, label %dec_label_pc_7d5aa

dec_label_pc_7d5aa:                               ; preds = %dec_label_pc_7d550
  %7 = call i32 @atoi(ptr nonnull %2)
  br label %dec_label_pc_7d5ca

dec_label_pc_7d5bb:                               ; preds = %dec_label_pc_7d550
  call void @printLine(ptr @global_var_bcc35)
  br label %dec_label_pc_7d5ca

dec_label_pc_7d5ca:                               ; preds = %dec_label_pc_7d5bb, %dec_label_pc_7d5aa
  %8 = call i64 @_Znwm(i64 8)
  %9 = inttoptr i64 %8 to ptr
  call void @anon1(ptr %9)
  %10 = icmp eq i64 %8, 0
  br i1 %10, label %dec_label_pc_7d611, label %dec_label_pc_7d604

dec_label_pc_7d604:                               ; preds = %dec_label_pc_7d5ca
  %11 = call i64 @_ZdlPvm(ptr %9, i64 8)
  br label %dec_label_pc_7d611

dec_label_pc_7d611:                               ; preds = %dec_label_pc_7d604, %dec_label_pc_7d5ca
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_7d626, label %dec_label_pc_7d621

dec_label_pc_7d621:                               ; preds = %dec_label_pc_7d611
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7d626

dec_label_pc_7d626:                               ; preds = %dec_label_pc_7d621, %dec_label_pc_7d611
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @anon2(ptr %result) local_unnamed_addr {
dec_label_pc_7d786:
  store i64 ptrtoint (ptr @global_var_ee5b0 to i64), ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_7d7a4:
  call void @anon2(ptr %result)
  store i64 ptrtoint (ptr @global_var_edfa0 to i64), ptr %result, align 8
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

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

