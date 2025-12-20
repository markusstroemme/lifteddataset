@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_18483:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = bitcast ptr %stack_var_-24 to ptr
  %2 = call i64 @anon1(ptr nonnull %1)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_184c7, label %dec_label_pc_184c2

dec_label_pc_184c2:                               ; preds = %dec_label_pc_18483
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_184c7

dec_label_pc_184c7:                               ; preds = %dec_label_pc_184c2, %dec_label_pc_18483
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_185b5:
  %0 = call ptr @malloc(i32 100)
  %1 = ptrtoint ptr %0 to i64
  %2 = bitcast ptr %arg1 to ptr
  store i64 %1, ptr %2, align 8
  %3 = call ptr @memset(ptr inttoptr (i64 100 to ptr), i32 65, i32 99)
  store i8 0, ptr inttoptr (i64 199 to ptr), align 1
  call void @free(ptr inttoptr (i64 100 to ptr))
  ret i64 ptrtoint (ptr @0 to i64)
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

