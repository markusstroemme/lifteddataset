@global_var_44599 = external constant [21 x i8]
@0 = external global i32

define i32 @staticReturnsFalse.162() local_unnamed_addr {
dec_label_pc_2a606:
  ret i32 0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2a6ec:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = call i32 @staticReturnsFalse.162()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_2a734, label %dec_label_pc_2a723

dec_label_pc_2a723:                               ; preds = %dec_label_pc_2a6ec
  call void @printLine(ptr @global_var_44599)
  br label %dec_label_pc_2a755

dec_label_pc_2a734:                               ; preds = %dec_label_pc_2a6ec
  %6 = inttoptr i64 %1 to ptr
  %7 = call ptr @memset(ptr %6, i32 65, i32 49)
  %8 = add i64 %1, 49
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  br label %dec_label_pc_2a755

dec_label_pc_2a755:                               ; preds = %dec_label_pc_2a734, %dec_label_pc_2a723
  %10 = inttoptr i64 %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %11 = bitcast ptr %stack_var_-72 to ptr
  %12 = call ptr @strcat(ptr nonnull %11, ptr %10)
  call void @printLine(ptr %10)
  %13 = icmp eq i64 %1, 0
  br i1 %13, label %dec_label_pc_2a7bd, label %dec_label_pc_2a7b1

dec_label_pc_2a7b1:                               ; preds = %dec_label_pc_2a755
  %14 = inttoptr i64 %1 to ptr
  %15 = and i64 %1, 4294967295
  %16 = inttoptr i64 %15 to ptr
  call void @_ZdaPv(ptr %14, ptr %16)
  br label %dec_label_pc_2a7bd

dec_label_pc_2a7bd:                               ; preds = %dec_label_pc_2a7b1, %dec_label_pc_2a755
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %18, label %dec_label_pc_2a7d2, label %dec_label_pc_2a7cd

dec_label_pc_2a7cd:                               ; preds = %dec_label_pc_2a7bd
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2a7d2

dec_label_pc_2a7d2:                               ; preds = %dec_label_pc_2a7cd, %dec_label_pc_2a7bd
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

