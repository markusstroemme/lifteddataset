@0 = external global i32

define void @anon0(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_5bc08:
  %0 = ptrtoint ptr %result to i64
  %1 = ptrtoint ptr %arg2 to i64
  store i64 %1, ptr %result, align 8
  %2 = call ptr @memset(ptr %result, i32 65, i32 99)
  %3 = add i64 %0, 99
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_5bc52:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %1 = bitcast ptr %stack_var_-72 to ptr
  %2 = bitcast ptr %result to ptr
  %3 = call ptr @strcat(ptr nonnull %1, ptr %2)
  call void @printLine(ptr nonnull %1)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_5bce1, label %dec_label_pc_5bcdc

dec_label_pc_5bcdc:                               ; preds = %dec_label_pc_5bc52
  call void @__stack_chk_fail()
  br label %dec_label_pc_5bce1

dec_label_pc_5bce1:                               ; preds = %dec_label_pc_5bcdc, %dec_label_pc_5bc52
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_5bdbf:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-136 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-136 to ptr
  %2 = call i64 @_Znwm(i64 8)
  %3 = inttoptr i64 %2 to ptr
  call void @anon0(ptr %3, ptr nonnull %1)
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %dec_label_pc_5be50, label %dec_label_pc_5be1a

dec_label_pc_5be1a:                               ; preds = %dec_label_pc_5bdbf
  call void @anon1(ptr %3)
  %5 = call i64 @_ZdlPvm(ptr %3, i64 8)
  br label %dec_label_pc_5be50

dec_label_pc_5be50:                               ; preds = %dec_label_pc_5be1a, %dec_label_pc_5bdbf
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_5be65, label %dec_label_pc_5be60

dec_label_pc_5be60:                               ; preds = %dec_label_pc_5be50
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5be65

dec_label_pc_5be65:                               ; preds = %dec_label_pc_5be60, %dec_label_pc_5be50
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5bf2d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5bf50, label %dec_label_pc_5bf44

dec_label_pc_5bf44:                               ; preds = %dec_label_pc_5bf2d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5bf50

dec_label_pc_5bf50:                               ; preds = %dec_label_pc_5bf44, %dec_label_pc_5bf2d
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

