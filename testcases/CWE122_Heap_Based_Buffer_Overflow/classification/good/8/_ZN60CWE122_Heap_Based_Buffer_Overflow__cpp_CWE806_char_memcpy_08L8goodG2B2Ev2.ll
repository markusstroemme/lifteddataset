@0 = external global i32

define i32 @staticReturnsTrue.40() local_unnamed_addr {
dec_label_pc_14bf9:
  ret i32 1
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_14dfc:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = call i32 @staticReturnsTrue.40()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  %.pre = inttoptr i64 %1 to ptr
  br i1 %5, label %dec_label_pc_14e54, label %dec_label_pc_14e33

dec_label_pc_14e33:                               ; preds = %dec_label_pc_14dfc
  %6 = call ptr @memset(ptr %.pre, i32 65, i32 49)
  %7 = add i64 %1, 49
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  br label %dec_label_pc_14e54

dec_label_pc_14e54:                               ; preds = %dec_label_pc_14dfc, %dec_label_pc_14e33
  %9 = inttoptr i64 %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %10 = call i32 @strlen(ptr %9)
  %11 = call ptr @memcpy(ptr nonnull %stack_var_-72, ptr %.pre, i32 %10)
  call void @printLine(ptr %9)
  %12 = icmp eq i64 %1, 0
  br i1 %12, label %dec_label_pc_14ecf, label %dec_label_pc_14ec3

dec_label_pc_14ec3:                               ; preds = %dec_label_pc_14e54
  %13 = and i64 %1, 4294967295
  %14 = inttoptr i64 %13 to ptr
  call void @_ZdaPv(ptr %.pre, ptr %14)
  br label %dec_label_pc_14ecf

dec_label_pc_14ecf:                               ; preds = %dec_label_pc_14ec3, %dec_label_pc_14e54
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %16, label %dec_label_pc_14ee4, label %dec_label_pc_14edf

dec_label_pc_14edf:                               ; preds = %dec_label_pc_14ecf
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_14ee4

dec_label_pc_14ee4:                               ; preds = %dec_label_pc_14edf, %dec_label_pc_14ecf
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

