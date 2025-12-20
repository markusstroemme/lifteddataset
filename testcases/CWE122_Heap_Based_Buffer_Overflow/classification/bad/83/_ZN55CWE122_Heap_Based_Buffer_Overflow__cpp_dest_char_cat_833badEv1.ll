@0 = external global i32

define void @anon0(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_23046:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  %1 = call i64 @_Znam(i64 50)
  store i64 %1, ptr %result, align 8
  store i8 0, ptr inttoptr (i64 50 to ptr), align 2
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_23086:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-120 to i64
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = bitcast ptr %stack_var_-120 to ptr
  %4 = call ptr @strcat(ptr nonnull %3, ptr nonnull %3)
  call void @printLine(ptr nonnull %3)
  %5 = and i64 %1, 4294967288
  %6 = inttoptr i64 %5 to ptr
  call void @_ZdaPv(ptr nonnull %stack_var_-120, ptr %6)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_23114, label %dec_label_pc_2310f

dec_label_pc_2310f:                               ; preds = %dec_label_pc_23086
  call void @__stack_chk_fail()
  br label %dec_label_pc_23114

dec_label_pc_23114:                               ; preds = %dec_label_pc_2310f, %dec_label_pc_23086
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_231e6:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @anon0(ptr nonnull %stack_var_-32, ptr null)
  call void @anon1(ptr nonnull %stack_var_-32)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_2323c, label %dec_label_pc_23237

dec_label_pc_23237:                               ; preds = %dec_label_pc_231e6
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2323c

dec_label_pc_2323c:                               ; preds = %dec_label_pc_23237, %dec_label_pc_231e6
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_37b38:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_37b5b, label %dec_label_pc_37b4f

dec_label_pc_37b4f:                               ; preds = %dec_label_pc_37b38
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_37b5b

dec_label_pc_37b5b:                               ; preds = %dec_label_pc_37b4f, %dec_label_pc_37b38
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

