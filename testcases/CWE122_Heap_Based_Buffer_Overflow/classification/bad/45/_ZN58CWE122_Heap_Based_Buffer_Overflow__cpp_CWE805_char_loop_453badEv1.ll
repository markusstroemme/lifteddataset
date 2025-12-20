@0 = external global i32
@global_var_6c078 = external local_unnamed_addr global ptr

define i64 @anon0() local_unnamed_addr {
dec_label_pc_ac8f:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-128 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_6c078, align 8
  %2 = ptrtoint ptr %1 to i64
  %3 = bitcast ptr %stack_var_-128 to ptr
  store i64 %2, ptr %3, align 8
  %4 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %5 = ptrtoint ptr %stack_var_-120 to i64
  store i64 %2, ptr %.reg2mem, align 8
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_acd9

dec_label_pc_acd9:                                ; preds = %dec_label_pc_acd9, %dec_label_pc_ac8f
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %.reload = load i64, ptr %.reg2mem, align 8
  %6 = add i64 %storemerge2.reload, %.reload
  %7 = add i64 %storemerge2.reload, %5
  %8 = inttoptr i64 %7 to ptr
  %9 = load i8, ptr %8, align 1
  %10 = inttoptr i64 %6 to ptr
  store i8 %9, ptr %10, align 1
  %11 = add nuw nsw i64 %storemerge2.reload, 1
  %12 = load ptr, ptr %stack_var_-128, align 8
  %13 = ptrtoint ptr %12 to i64
  %exitcond = icmp eq i64 %11, 100
  store i64 %13, ptr %.reg2mem, align 8
  store i64 %11, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_ad00, label %dec_label_pc_acd9

dec_label_pc_ad00:                                ; preds = %dec_label_pc_acd9
  %14 = add i64 %13, 99
  %15 = inttoptr i64 %14 to ptr
  store i8 0, ptr %15, align 1
  %16 = load ptr, ptr %stack_var_-128, align 8
  call void @printLine(ptr %16)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %dec_label_pc_ad2a, label %dec_label_pc_ad1e

dec_label_pc_ad1e:                                ; preds = %dec_label_pc_ad00
  %18 = bitcast ptr %16 to ptr
  call void @_ZdaPv(ptr %18, ptr inttoptr (i64 67 to ptr))
  br label %dec_label_pc_ad2a

dec_label_pc_ad2a:                                ; preds = %dec_label_pc_ad1e, %dec_label_pc_ad00
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %0, %19
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %20, label %dec_label_pc_ad3f, label %dec_label_pc_ad3a

dec_label_pc_ad3a:                                ; preds = %dec_label_pc_ad2a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_ad3f

dec_label_pc_ad3f:                                ; preds = %dec_label_pc_ad3a, %dec_label_pc_ad2a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_ad41:
  %0 = call i64 @_Znam(i64 50)
  %1 = inttoptr i64 %0 to ptr
  store i8 0, ptr %1, align 1
  store ptr %1, ptr @global_var_6c078, align 8
  %2 = call i64 @anon0()
  ret i64 %2
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

