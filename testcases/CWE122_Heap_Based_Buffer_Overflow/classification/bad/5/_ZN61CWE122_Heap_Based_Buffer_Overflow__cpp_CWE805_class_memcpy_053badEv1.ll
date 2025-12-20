@global_var_320 = external constant [20 x i8]
@global_var_609dc = external constant [4 x i8]
@0 = external global i32
@global_var_7f010 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_7e40:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %stack_var_-840.0.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_7f010, align 4
  %2 = icmp eq i32 %1, 0
  store i64 0, ptr %stack_var_-840.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_7e84, label %dec_label_pc_7e73

dec_label_pc_7e73:                                ; preds = %dec_label_pc_7e40
  %3 = call i64 @_Znam(i64 400)
  store i64 %3, ptr %stack_var_-840.0.reg2mem, align 8
  br label %dec_label_pc_7e84

dec_label_pc_7e84:                                ; preds = %dec_label_pc_7e73, %dec_label_pc_7e40
  %4 = ptrtoint ptr %stack_var_-8 to i64
  %stack_var_-840.0.reload = load i64, ptr %stack_var_-840.0.reg2mem, align 8
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_7e91

dec_label_pc_7e91:                                ; preds = %dec_label_pc_7e91, %dec_label_pc_7e84
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %5 = mul i64 %storemerge1.reload, 8
  %6 = add i64 %5, %4
  %7 = add i64 %6, -816
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 8
  %9 = add i64 %6, -812
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 4
  %11 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %11, 100
  store i64 %11, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_7ec7, label %dec_label_pc_7e91

dec_label_pc_7ec7:                                ; preds = %dec_label_pc_7e91
  %12 = inttoptr i64 %stack_var_-840.0.reload to ptr
  %13 = call ptr @memcpy(ptr %12, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %14 = inttoptr i64 %stack_var_-840.0.reload to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %16 = icmp eq i64 %stack_var_-840.0.reload, 0
  br i1 %16, label %dec_label_pc_7f0e, label %dec_label_pc_7eff

dec_label_pc_7eff:                                ; preds = %dec_label_pc_7ec7
  %17 = ptrtoint ptr %stack_var_-824 to i64
  %18 = and i64 %17, 4294967288
  %19 = inttoptr i64 %18 to ptr
  call void @_ZdaPv(ptr %12, ptr %19)
  br label %dec_label_pc_7f0e

dec_label_pc_7f0e:                                ; preds = %dec_label_pc_7eff, %dec_label_pc_7ec7
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %21, label %dec_label_pc_7f23, label %dec_label_pc_7f1e

dec_label_pc_7f1e:                                ; preds = %dec_label_pc_7f0e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7f23

dec_label_pc_7f23:                                ; preds = %dec_label_pc_7f1e, %dec_label_pc_7f0e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_4d9d3:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_609dc, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

