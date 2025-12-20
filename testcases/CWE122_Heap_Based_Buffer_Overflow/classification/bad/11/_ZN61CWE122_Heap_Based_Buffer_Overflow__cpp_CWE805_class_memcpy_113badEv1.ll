@global_var_320 = external constant [20 x i8]
@global_var_609dc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_8f3c:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %stack_var_-840.0.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  store i64 0, ptr %stack_var_-840.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_8f84, label %dec_label_pc_8f73

dec_label_pc_8f73:                                ; preds = %dec_label_pc_8f3c
  %5 = call i64 @_Znam(i64 400)
  store i64 %5, ptr %stack_var_-840.0.reg2mem, align 8
  br label %dec_label_pc_8f84

dec_label_pc_8f84:                                ; preds = %dec_label_pc_8f73, %dec_label_pc_8f3c
  %6 = ptrtoint ptr %stack_var_-8 to i64
  %stack_var_-840.0.reload = load i64, ptr %stack_var_-840.0.reg2mem, align 8
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_8f91

dec_label_pc_8f91:                                ; preds = %dec_label_pc_8f91, %dec_label_pc_8f84
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %7 = mul i64 %storemerge1.reload, 8
  %8 = add i64 %7, %6
  %9 = add i64 %8, -816
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 8
  %11 = add i64 %8, -812
  %12 = inttoptr i64 %11 to ptr
  store i32 0, ptr %12, align 4
  %13 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %13, 100
  store i64 %13, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_8fc7, label %dec_label_pc_8f91

dec_label_pc_8fc7:                                ; preds = %dec_label_pc_8f91
  %14 = inttoptr i64 %stack_var_-840.0.reload to ptr
  %15 = call ptr @memcpy(ptr %14, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %16 = inttoptr i64 %stack_var_-840.0.reload to ptr
  %17 = load i32, ptr %16, align 4
  call void @printIntLine(i32 %17)
  %18 = icmp eq i64 %stack_var_-840.0.reload, 0
  br i1 %18, label %dec_label_pc_900e, label %dec_label_pc_8fff

dec_label_pc_8fff:                                ; preds = %dec_label_pc_8fc7
  %19 = ptrtoint ptr %stack_var_-824 to i64
  %20 = and i64 %19, 4294967288
  %21 = inttoptr i64 %20 to ptr
  call void @_ZdaPv(ptr %14, ptr %21)
  br label %dec_label_pc_900e

dec_label_pc_900e:                                ; preds = %dec_label_pc_8fff, %dec_label_pc_8fc7
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %0, %22
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %23, label %dec_label_pc_9023, label %dec_label_pc_901e

dec_label_pc_901e:                                ; preds = %dec_label_pc_900e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_9023

dec_label_pc_9023:                                ; preds = %dec_label_pc_901e, %dec_label_pc_900e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_4d9d3:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_609dc, i64 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_4de88:
  ret i32 1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

