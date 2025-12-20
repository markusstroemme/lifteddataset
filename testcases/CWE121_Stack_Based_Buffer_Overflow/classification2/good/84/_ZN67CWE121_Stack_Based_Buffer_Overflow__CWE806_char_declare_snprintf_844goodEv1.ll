@global_var_1367e = external constant [3 x i8]
@0 = external global i32

define void @anon0(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_fc80:
  %0 = ptrtoint ptr %result to i64
  %1 = ptrtoint ptr %arg2 to i64
  store i64 %1, ptr %result, align 8
  %2 = call ptr @memset(ptr %result, i32 65, i32 49)
  %3 = add i64 %0, 49
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_fcca:
  %stack_var_-88 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-88, align 8
  %1 = bitcast ptr %result to ptr
  %2 = call i32 @strlen(ptr %1)
  %3 = bitcast ptr %stack_var_-88 to ptr
  %4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %3, i32 %2, ptr @global_var_1367e, ptr %result)
  call void @printLine(ptr nonnull %3)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_fd78, label %dec_label_pc_fd73

dec_label_pc_fd73:                                ; preds = %dec_label_pc_fcca
  call void @__stack_chk_fail()
  br label %dec_label_pc_fd78

dec_label_pc_fd78:                                ; preds = %dec_label_pc_fd73, %dec_label_pc_fcca
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_fe2d:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-136 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-136 to ptr
  %2 = call i64 @_Znwm(i64 8)
  %3 = inttoptr i64 %2 to ptr
  call void @anon0(ptr %3, ptr nonnull %1)
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %dec_label_pc_febe, label %dec_label_pc_fe88

dec_label_pc_fe88:                                ; preds = %dec_label_pc_fe2d
  call void @anon1(ptr %3)
  %5 = call i64 @_ZdlPvm(ptr %3, i64 8)
  br label %dec_label_pc_febe

dec_label_pc_febe:                                ; preds = %dec_label_pc_fe88, %dec_label_pc_fe2d
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_fed3, label %dec_label_pc_fece

dec_label_pc_fece:                                ; preds = %dec_label_pc_febe
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_fed3

dec_label_pc_fed3:                                ; preds = %dec_label_pc_fece, %dec_label_pc_febe
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_feec:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_ff0f, label %dec_label_pc_ff03

dec_label_pc_ff03:                                ; preds = %dec_label_pc_feec
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_ff0f

dec_label_pc_ff0f:                                ; preds = %dec_label_pc_ff03, %dec_label_pc_feec
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

