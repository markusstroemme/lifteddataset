@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_be5e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = inttoptr i64 %1 to ptr
  store ptr %2, ptr %stack_var_-24, align 8
  store i8 0, ptr %2, align 1
  %3 = bitcast ptr %stack_var_-24 to ptr
  %4 = call i64 @anon1(ptr nonnull %3)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_beb7, label %dec_label_pc_beb2

dec_label_pc_beb2:                                ; preds = %dec_label_pc_be5e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_beb7

dec_label_pc_beb7:                                ; preds = %dec_label_pc_beb2, %dec_label_pc_be5e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_bf9f:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %arg1 to i64
  %stack_var_-120 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = ptrtoint ptr %stack_var_-120 to i64
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_c001

dec_label_pc_c001:                                ; preds = %dec_label_pc_c001, %dec_label_pc_bf9f
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %4 = add i64 %storemerge1.reload, %0
  %5 = add i64 %storemerge1.reload, %3
  %6 = inttoptr i64 %5 to ptr
  %7 = load i8, ptr %6, align 1
  %8 = inttoptr i64 %4 to ptr
  store i8 %7, ptr %8, align 1
  %9 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %9, 100
  store i64 %9, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_c034, label %dec_label_pc_c001

dec_label_pc_c034:                                ; preds = %dec_label_pc_c001
  %10 = add i64 %0, 99
  %11 = inttoptr i64 %10 to ptr
  store i8 0, ptr %11, align 1
  %12 = bitcast ptr %arg1 to ptr
  call void @printLine(ptr %12)
  %13 = icmp eq ptr %arg1, null
  br i1 %13, label %dec_label_pc_c05e, label %dec_label_pc_c052

dec_label_pc_c052:                                ; preds = %dec_label_pc_c034
  call void @_ZdaPv(ptr nonnull %arg1, ptr inttoptr (i64 67 to ptr))
  br label %dec_label_pc_c05e

dec_label_pc_c05e:                                ; preds = %dec_label_pc_c052, %dec_label_pc_c034
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %1, %14
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_c073, label %dec_label_pc_c06e

dec_label_pc_c06e:                                ; preds = %dec_label_pc_c05e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_c073

dec_label_pc_c073:                                ; preds = %dec_label_pc_c06e, %dec_label_pc_c05e
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

