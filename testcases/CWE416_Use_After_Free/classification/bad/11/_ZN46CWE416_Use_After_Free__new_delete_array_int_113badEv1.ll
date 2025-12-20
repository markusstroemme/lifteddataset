@global_var_4a944 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_24a3d:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i32 @globalReturnsTrue()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_24aaf, label %dec_label_pc_24a5f

dec_label_pc_24a5f:                               ; preds = %dec_label_pc_24a3d
  %6 = call i64 @_Znam(i64 400)
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_24a77

dec_label_pc_24a77:                               ; preds = %dec_label_pc_24a77, %dec_label_pc_24a5f
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %7 = mul i64 %storemerge1.reload, 4
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 5, ptr %9, align 4
  %10 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %10, 100
  store i64 %10, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_24a9c, label %dec_label_pc_24a77

dec_label_pc_24a9c:                               ; preds = %dec_label_pc_24a77
  %11 = icmp eq i64 %6, 0
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_24aaf, label %dec_label_pc_24aa3

dec_label_pc_24aa3:                               ; preds = %dec_label_pc_24a9c
  %12 = inttoptr i64 %6 to ptr
  %13 = and i64 %1, 4294967295
  %14 = inttoptr i64 %13 to ptr
  call void @_ZdaPv(ptr %12, ptr %14)
  %phitmp = inttoptr i64 %6 to ptr
  store ptr %phitmp, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_24aaf

dec_label_pc_24aaf:                               ; preds = %dec_label_pc_24aa3, %dec_label_pc_24a9c, %dec_label_pc_24a3d
  %15 = call i32 @globalReturnsTrue()
  %16 = icmp eq i32 %15, 0
  %17 = icmp eq i1 %16, false
  %18 = zext i1 %17 to i64
  %19 = and i32 %15, -256
  %20 = sext i32 %19 to i64
  %21 = or i64 %18, %20
  %22 = icmp eq i1 %17, false
  store i64 %21, ptr %rax.0.reg2mem, align 8
  br i1 %22, label %dec_label_pc_24aca, label %dec_label_pc_24abd

dec_label_pc_24abd:                               ; preds = %dec_label_pc_24aaf
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  %23 = load i32, ptr %stack_var_-24.0.reload, align 4
  call void @printIntLine(i32 %23)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_24aca

dec_label_pc_24aca:                               ; preds = %dec_label_pc_24abd, %dec_label_pc_24aaf
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3b862:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a944, i64 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_3bd17:
  ret i32 1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

