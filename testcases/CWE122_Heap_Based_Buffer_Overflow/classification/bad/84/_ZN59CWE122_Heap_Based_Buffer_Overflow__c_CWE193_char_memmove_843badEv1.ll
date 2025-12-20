@0 = external global i32

define void @anon0(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3292e:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  %1 = call ptr @malloc(i32 10)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_3297a:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %1 = bitcast ptr %stack_var_-27 to ptr
  %2 = call i32 @strlen(ptr nonnull %1)
  %3 = add i32 %2, 1
  %4 = call ptr @memmove(ptr nonnull %stack_var_-27, ptr nonnull %stack_var_-27, i32 %3)
  call void @printLine(ptr nonnull %1)
  call void @free(ptr nonnull %stack_var_-27)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_32a0a, label %dec_label_pc_32a05

dec_label_pc_32a05:                               ; preds = %dec_label_pc_3297a
  call void @__stack_chk_fail()
  br label %dec_label_pc_32a0a

dec_label_pc_32a0a:                               ; preds = %dec_label_pc_32a05, %dec_label_pc_3297a
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_32aea:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znwm(i64 8)
  %1 = inttoptr i64 %0 to ptr
  call void @anon0(ptr %1, ptr null)
  %2 = icmp eq i64 %0, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_32b60, label %dec_label_pc_32b2a

dec_label_pc_32b2a:                               ; preds = %dec_label_pc_32aea
  call void @anon1(ptr %1)
  %3 = call i64 @_ZdlPvm(ptr %1, i64 8)
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_32b60

dec_label_pc_32b60:                               ; preds = %dec_label_pc_32b2a, %dec_label_pc_32aea
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3deb3:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3ded6, label %dec_label_pc_3deca

dec_label_pc_3deca:                               ; preds = %dec_label_pc_3deb3
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3ded6

dec_label_pc_3ded6:                               ; preds = %dec_label_pc_3deca, %dec_label_pc_3deb3
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

