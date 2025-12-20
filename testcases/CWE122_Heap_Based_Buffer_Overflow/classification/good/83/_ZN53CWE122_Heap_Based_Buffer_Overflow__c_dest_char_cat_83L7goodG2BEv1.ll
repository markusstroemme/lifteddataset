@0 = external global i32

define void @anon0(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_1f10a:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  %1 = call ptr @malloc(i32 100)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %result, align 8
  store i8 0, ptr inttoptr (i64 100 to ptr), align 4
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_1f160:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %2 = bitcast ptr %stack_var_-120 to ptr
  %3 = call ptr @strcat(ptr nonnull %2, ptr nonnull %2)
  call void @printLine(ptr nonnull %2)
  call void @free(ptr nonnull %stack_var_-120)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_1f1e2, label %dec_label_pc_1f1dd

dec_label_pc_1f1dd:                               ; preds = %dec_label_pc_1f160
  call void @__stack_chk_fail()
  br label %dec_label_pc_1f1e2

dec_label_pc_1f1e2:                               ; preds = %dec_label_pc_1f1dd, %dec_label_pc_1f160
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_1f23c:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @anon0(ptr nonnull %stack_var_-32, ptr null)
  call void @anon1(ptr nonnull %stack_var_-32)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_1f292, label %dec_label_pc_1f28d

dec_label_pc_1f28d:                               ; preds = %dec_label_pc_1f23c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1f292

dec_label_pc_1f292:                               ; preds = %dec_label_pc_1f28d, %dec_label_pc_1f23c
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_24c88:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_24cab, label %dec_label_pc_24c9f

dec_label_pc_24c9f:                               ; preds = %dec_label_pc_24c88
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_24cab

dec_label_pc_24cab:                               ; preds = %dec_label_pc_24c9f, %dec_label_pc_24c88
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

