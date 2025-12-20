@0 = external global i32
@global_var_6c014 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_7ac4:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-136.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_6c014, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store ptr null, ptr %stack_var_-136.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_7b07, label %dec_label_pc_7af2

dec_label_pc_7af2:                                ; preds = %dec_label_pc_7ac4
  %4 = call i64 @_Znam(i64 50)
  %5 = inttoptr i64 %4 to ptr
  store i8 0, ptr %5, align 1
  store ptr %5, ptr %stack_var_-136.0.reg2mem, align 8
  br label %dec_label_pc_7b07

dec_label_pc_7b07:                                ; preds = %dec_label_pc_7af2, %dec_label_pc_7ac4
  %stack_var_-136.0.reload = load ptr, ptr %stack_var_-136.0.reg2mem, align 8
  %6 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %7 = ptrtoint ptr %stack_var_-136.0.reload to i64
  %8 = ptrtoint ptr %stack_var_-120 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_7b2b

dec_label_pc_7b2b:                                ; preds = %dec_label_pc_7b2b, %dec_label_pc_7b07
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %9 = add i64 %storemerge2.reload, %7
  %10 = add i64 %storemerge2.reload, %8
  %11 = inttoptr i64 %10 to ptr
  %12 = load i8, ptr %11, align 1
  %13 = inttoptr i64 %9 to ptr
  store i8 %12, ptr %13, align 1
  %14 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %14, 100
  store i64 %14, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_7b52, label %dec_label_pc_7b2b

dec_label_pc_7b52:                                ; preds = %dec_label_pc_7b2b
  %15 = add i64 %7, 99
  %16 = inttoptr i64 %15 to ptr
  store i8 0, ptr %16, align 1
  call void @printLine(ptr %stack_var_-136.0.reload)
  %17 = icmp eq ptr %stack_var_-136.0.reload, null
  br i1 %17, label %dec_label_pc_7b7c, label %dec_label_pc_7b70

dec_label_pc_7b70:                                ; preds = %dec_label_pc_7b52
  %18 = bitcast ptr %stack_var_-136.0.reload to ptr
  call void @_ZdaPv(ptr %18, ptr inttoptr (i64 67 to ptr))
  br label %dec_label_pc_7b7c

dec_label_pc_7b7c:                                ; preds = %dec_label_pc_7b70, %dec_label_pc_7b52
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %0, %19
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %20, label %dec_label_pc_7b91, label %dec_label_pc_7b8c

dec_label_pc_7b8c:                                ; preds = %dec_label_pc_7b7c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7b91

dec_label_pc_7b91:                                ; preds = %dec_label_pc_7b8c, %dec_label_pc_7b7c
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

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

