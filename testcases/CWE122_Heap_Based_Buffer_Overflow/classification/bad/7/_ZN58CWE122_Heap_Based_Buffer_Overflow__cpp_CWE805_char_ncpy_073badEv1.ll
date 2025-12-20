@0 = external global i32
@global_var_6c03c = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2981e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-128.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_6c03c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store ptr null, ptr %stack_var_-128.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_29861, label %dec_label_pc_2984c

dec_label_pc_2984c:                               ; preds = %dec_label_pc_2981e
  %4 = call i64 @_Znam(i64 50)
  %5 = inttoptr i64 %4 to ptr
  store i8 0, ptr %5, align 1
  store ptr %5, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_29861

dec_label_pc_29861:                               ; preds = %dec_label_pc_2984c, %dec_label_pc_2981e
  %stack_var_-128.0.reload = load ptr, ptr %stack_var_-128.0.reg2mem, align 8
  %6 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %7 = bitcast ptr %stack_var_-120 to ptr
  %8 = call ptr @strncpy(ptr %stack_var_-128.0.reload, ptr nonnull %7, i32 99)
  %9 = ptrtoint ptr %stack_var_-128.0.reload to i64
  %10 = add i64 %9, 99
  %11 = inttoptr i64 %10 to ptr
  store i8 0, ptr %11, align 1
  call void @printLine(ptr %stack_var_-128.0.reload)
  %12 = icmp eq ptr %stack_var_-128.0.reload, null
  br i1 %12, label %dec_label_pc_298bd, label %dec_label_pc_298b1

dec_label_pc_298b1:                               ; preds = %dec_label_pc_29861
  %13 = ptrtoint ptr %stack_var_-120 to i64
  %14 = bitcast ptr %stack_var_-128.0.reload to ptr
  %15 = and i64 %13, 4294967288
  %16 = inttoptr i64 %15 to ptr
  call void @_ZdaPv(ptr %14, ptr %16)
  br label %dec_label_pc_298bd

dec_label_pc_298bd:                               ; preds = %dec_label_pc_298b1, %dec_label_pc_29861
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %18, label %dec_label_pc_298d2, label %dec_label_pc_298cd

dec_label_pc_298cd:                               ; preds = %dec_label_pc_298bd
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_298d2

dec_label_pc_298d2:                               ; preds = %dec_label_pc_298cd, %dec_label_pc_298bd
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_42e40:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_42e63, label %dec_label_pc_42e57

dec_label_pc_42e57:                               ; preds = %dec_label_pc_42e40
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_42e63

dec_label_pc_42e63:                               ; preds = %dec_label_pc_42e57, %dec_label_pc_42e40
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

