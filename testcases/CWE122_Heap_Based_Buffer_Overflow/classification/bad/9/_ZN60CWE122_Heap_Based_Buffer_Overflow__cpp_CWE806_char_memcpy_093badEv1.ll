@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_14efb:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = inttoptr i64 %1 to ptr
  %3 = inttoptr i64 %1 to ptr
  %4 = call ptr @memset(ptr %3, i32 65, i32 99)
  %5 = add i64 %1, 99
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  store i64 0, ptr %stack_var_-72, align 8
  %7 = call i32 @strlen(ptr %2)
  %8 = call ptr @memcpy(ptr nonnull %stack_var_-72, ptr %3, i32 %7)
  call void @printLine(ptr %2)
  %9 = icmp eq i64 %1, 0
  br i1 %9, label %dec_label_pc_14fca, label %dec_label_pc_14fbe

dec_label_pc_14fbe:                               ; preds = %dec_label_pc_14efb
  %10 = and i64 %1, 4294967295
  %11 = inttoptr i64 %10 to ptr
  call void @_ZdaPv(ptr %3, ptr %11)
  br label %dec_label_pc_14fca

dec_label_pc_14fca:                               ; preds = %dec_label_pc_14fbe, %dec_label_pc_14efb
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_14fdf, label %dec_label_pc_14fda

dec_label_pc_14fda:                               ; preds = %dec_label_pc_14fca
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_14fdf

dec_label_pc_14fdf:                               ; preds = %dec_label_pc_14fda, %dec_label_pc_14fca
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3a5bd:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3a5e0, label %dec_label_pc_3a5d4

dec_label_pc_3a5d4:                               ; preds = %dec_label_pc_3a5bd
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3a5e0

dec_label_pc_3a5e0:                               ; preds = %dec_label_pc_3a5d4, %dec_label_pc_3a5bd
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

