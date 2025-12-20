@0 = external global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_38a0f:
  %0 = ptrtoint ptr %arg1 to i64
  %1 = bitcast ptr %arg1 to ptr
  %2 = call ptr @memset(ptr %1, i32 65, i32 49)
  %3 = add i64 %0, 49
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  ret i64 %3
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_38a49:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-80 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = bitcast ptr %1 to ptr
  store ptr %2, ptr %stack_var_-80, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_38a85, label %dec_label_pc_38a7b

dec_label_pc_38a7b:                               ; preds = %dec_label_pc_38a49
  call void @exit(i32 -1)
  unreachable

dec_label_pc_38a85:                               ; preds = %dec_label_pc_38a49
  %5 = call i64 @anon0(ptr nonnull %stack_var_-80)
  store i64 0, ptr %stack_var_-72, align 8
  %6 = load ptr, ptr %stack_var_-80, align 8
  %7 = call i32 @strlen(ptr %6)
  %8 = load ptr, ptr %stack_var_-80, align 8
  %9 = bitcast ptr %stack_var_-72 to ptr
  %10 = call ptr @strncpy(ptr nonnull %9, ptr %8, i32 %7)
  %11 = load ptr, ptr %stack_var_-80, align 8
  call void @printLine(ptr %11)
  %12 = load ptr, ptr %stack_var_-80, align 8
  %13 = bitcast ptr %12 to ptr
  call void @free(ptr %13)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_38b1a, label %dec_label_pc_38b15

dec_label_pc_38b15:                               ; preds = %dec_label_pc_38a85
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_38b1a

dec_label_pc_38b1a:                               ; preds = %dec_label_pc_38b15, %dec_label_pc_38a85
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3c6eb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3c70e, label %dec_label_pc_3c702

dec_label_pc_3c702:                               ; preds = %dec_label_pc_3c6eb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3c70e

dec_label_pc_3c70e:                               ; preds = %dec_label_pc_3c702, %dec_label_pc_3c6eb
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

