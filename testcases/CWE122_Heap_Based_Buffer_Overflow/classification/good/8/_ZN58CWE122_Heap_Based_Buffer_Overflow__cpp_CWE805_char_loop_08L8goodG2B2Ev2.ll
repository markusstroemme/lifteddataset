@0 = external global i32

define i32 @staticReturnsTrue() local_unnamed_addr {
dec_label_pc_7d57:
  ret i32 1
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_7f2a:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-136.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsTrue()
  %2 = icmp eq i32 %1, 0
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  store ptr null, ptr %stack_var_-136.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_7f70, label %dec_label_pc_7f5b

dec_label_pc_7f5b:                                ; preds = %dec_label_pc_7f2a
  %5 = call i64 @_Znam(i64 100)
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  store ptr %6, ptr %stack_var_-136.0.reg2mem, align 8
  br label %dec_label_pc_7f70

dec_label_pc_7f70:                                ; preds = %dec_label_pc_7f5b, %dec_label_pc_7f2a
  %stack_var_-136.0.reload = load ptr, ptr %stack_var_-136.0.reg2mem, align 8
  %7 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %8 = ptrtoint ptr %stack_var_-136.0.reload to i64
  %9 = ptrtoint ptr %stack_var_-120 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_7f94

dec_label_pc_7f94:                                ; preds = %dec_label_pc_7f94, %dec_label_pc_7f70
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %10 = add i64 %storemerge2.reload, %8
  %11 = add i64 %storemerge2.reload, %9
  %12 = inttoptr i64 %11 to ptr
  %13 = load i8, ptr %12, align 1
  %14 = inttoptr i64 %10 to ptr
  store i8 %13, ptr %14, align 1
  %15 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %15, 100
  store i64 %15, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_7fbb, label %dec_label_pc_7f94

dec_label_pc_7fbb:                                ; preds = %dec_label_pc_7f94
  %16 = add i64 %8, 99
  %17 = inttoptr i64 %16 to ptr
  store i8 0, ptr %17, align 1
  call void @printLine(ptr %stack_var_-136.0.reload)
  %18 = icmp eq ptr %stack_var_-136.0.reload, null
  br i1 %18, label %dec_label_pc_7fe5, label %dec_label_pc_7fd9

dec_label_pc_7fd9:                                ; preds = %dec_label_pc_7fbb
  %19 = bitcast ptr %stack_var_-136.0.reload to ptr
  call void @_ZdaPv(ptr %19, ptr inttoptr (i64 67 to ptr))
  br label %dec_label_pc_7fe5

dec_label_pc_7fe5:                                ; preds = %dec_label_pc_7fd9, %dec_label_pc_7fbb
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %21, label %dec_label_pc_7ffa, label %dec_label_pc_7ff5

dec_label_pc_7ff5:                                ; preds = %dec_label_pc_7fe5
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7ffa

dec_label_pc_7ffa:                                ; preds = %dec_label_pc_7ff5, %dec_label_pc_7fe5
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

