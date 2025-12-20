@global_var_5123d = external constant [21 x i8]
@0 = external global i32

define i32 @staticReturnsFalse() local_unnamed_addr {
dec_label_pc_7d66:
  ret i32 0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_7e47:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-136.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsFalse()
  %2 = icmp eq i32 %1, 0
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_7e89, label %dec_label_pc_7e78

dec_label_pc_7e78:                                ; preds = %dec_label_pc_7e47
  call void @printLine(ptr @global_var_5123d)
  store ptr null, ptr %stack_var_-136.0.reg2mem, align 8
  br label %dec_label_pc_7e9e

dec_label_pc_7e89:                                ; preds = %dec_label_pc_7e47
  %5 = call i64 @_Znam(i64 100)
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  store ptr %6, ptr %stack_var_-136.0.reg2mem, align 8
  br label %dec_label_pc_7e9e

dec_label_pc_7e9e:                                ; preds = %dec_label_pc_7e89, %dec_label_pc_7e78
  %stack_var_-136.0.reload = load ptr, ptr %stack_var_-136.0.reg2mem, align 8
  %7 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %8 = ptrtoint ptr %stack_var_-136.0.reload to i64
  %9 = ptrtoint ptr %stack_var_-120 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_7ec2

dec_label_pc_7ec2:                                ; preds = %dec_label_pc_7ec2, %dec_label_pc_7e9e
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
  br i1 %exitcond, label %dec_label_pc_7ee9, label %dec_label_pc_7ec2

dec_label_pc_7ee9:                                ; preds = %dec_label_pc_7ec2
  %16 = add i64 %8, 99
  %17 = inttoptr i64 %16 to ptr
  store i8 0, ptr %17, align 1
  call void @printLine(ptr %stack_var_-136.0.reload)
  %18 = icmp eq ptr %stack_var_-136.0.reload, null
  br i1 %18, label %dec_label_pc_7f13, label %dec_label_pc_7f07

dec_label_pc_7f07:                                ; preds = %dec_label_pc_7ee9
  %19 = bitcast ptr %stack_var_-136.0.reload to ptr
  call void @_ZdaPv(ptr %19, ptr inttoptr (i64 67 to ptr))
  br label %dec_label_pc_7f13

dec_label_pc_7f13:                                ; preds = %dec_label_pc_7f07, %dec_label_pc_7ee9
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %21, label %dec_label_pc_7f28, label %dec_label_pc_7f23

dec_label_pc_7f23:                                ; preds = %dec_label_pc_7f13
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7f28

dec_label_pc_7f28:                                ; preds = %dec_label_pc_7f23, %dec_label_pc_7f13
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

