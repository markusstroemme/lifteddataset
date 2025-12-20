@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1c662:
  %0 = call i64 @_Znam(i64 100)
  %1 = inttoptr i64 %0 to ptr
  store i8 0, ptr %1, align 1
  %2 = call i64 @anon1(ptr %1)
  ret i64 %2
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_1c6c9:
  %0 = call i64 @anon2(ptr %arg1)
  ret i64 %0
}

define i64 @anon2(ptr %arg1) local_unnamed_addr {
dec_label_pc_1c76a:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %2 = bitcast ptr %stack_var_-120 to ptr
  %3 = call ptr @strcat(ptr %arg1, ptr nonnull %2)
  call void @printLine(ptr %arg1)
  %4 = icmp eq ptr %arg1, null
  br i1 %4, label %dec_label_pc_1c7d5, label %dec_label_pc_1c7c9

dec_label_pc_1c7c9:                               ; preds = %dec_label_pc_1c76a
  %5 = ptrtoint ptr %stack_var_-120 to i64
  %6 = bitcast ptr %arg1 to ptr
  %7 = and i64 %5, 4294967288
  %8 = inttoptr i64 %7 to ptr
  call void @_ZdaPv(ptr %6, ptr %8)
  br label %dec_label_pc_1c7d5

dec_label_pc_1c7d5:                               ; preds = %dec_label_pc_1c7c9, %dec_label_pc_1c76a
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_1c7ea, label %dec_label_pc_1c7e5

dec_label_pc_1c7e5:                               ; preds = %dec_label_pc_1c7d5
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1c7ea

dec_label_pc_1c7ea:                               ; preds = %dec_label_pc_1c7e5, %dec_label_pc_1c7d5
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

