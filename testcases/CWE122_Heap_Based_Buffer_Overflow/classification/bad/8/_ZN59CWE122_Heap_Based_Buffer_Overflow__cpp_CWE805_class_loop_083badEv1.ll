@global_var_531bc = external constant [4 x i8]
@0 = external global i32

define i32 @staticReturnsTrue.57() local_unnamed_addr {
dec_label_pc_36ff8:
  ret i32 1
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_37016:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %storemerge13.reg2mem = alloca i64, align 8
  %stack_var_-848.0.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = call i32 @staticReturnsTrue.57()
  %4 = icmp eq i32 %3, 0
  %5 = icmp eq i1 %4, false
  %6 = icmp eq i1 %5, false
  store i64 0, ptr %stack_var_-848.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_3705e, label %dec_label_pc_3704d

dec_label_pc_3704d:                               ; preds = %dec_label_pc_37016
  %7 = call i64 @_Znam(i64 400)
  store i64 %7, ptr %stack_var_-848.0.reg2mem, align 8
  br label %dec_label_pc_3705e

dec_label_pc_3705e:                               ; preds = %dec_label_pc_3704d, %dec_label_pc_37016
  %8 = ptrtoint ptr %stack_var_-8 to i64
  %stack_var_-848.0.reload = load i64, ptr %stack_var_-848.0.reg2mem, align 8
  %9 = add i64 %8, -816
  %10 = add i64 %8, -812
  store i64 0, ptr %storemerge13.reg2mem, align 8
  br label %dec_label_pc_3706b

dec_label_pc_3706b:                               ; preds = %dec_label_pc_3706b, %dec_label_pc_3705e
  %storemerge13.reload = load i64, ptr %storemerge13.reg2mem, align 8
  %11 = mul i64 %storemerge13.reload, 8
  %12 = add i64 %11, %9
  %13 = inttoptr i64 %12 to ptr
  store i32 0, ptr %13, align 8
  %14 = add i64 %10, %11
  %15 = inttoptr i64 %14 to ptr
  store i32 0, ptr %15, align 4
  %16 = add nuw nsw i64 %storemerge13.reload, 1
  %exitcond4 = icmp eq i64 %16, 100
  store i64 %16, ptr %storemerge13.reg2mem, align 8
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond4, label %dec_label_pc_370ae, label %dec_label_pc_3706b

dec_label_pc_370ae:                               ; preds = %dec_label_pc_3706b, %dec_label_pc_370ae
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %17 = mul i64 %storemerge2.reload, 8
  %18 = add i64 %17, %stack_var_-848.0.reload
  %19 = add i64 %17, %9
  %20 = inttoptr i64 %19 to ptr
  %21 = load i64, ptr %20, align 8
  %22 = inttoptr i64 %18 to ptr
  store i64 %21, ptr %22, align 8
  %23 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %23, 100
  store i64 %23, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_370eb, label %dec_label_pc_370ae

dec_label_pc_370eb:                               ; preds = %dec_label_pc_370ae
  %24 = inttoptr i64 %stack_var_-848.0.reload to ptr
  %25 = load i32, ptr %24, align 4
  call void @printIntLine(i32 %25)
  %26 = icmp eq i64 %stack_var_-848.0.reload, 0
  br i1 %26, label %dec_label_pc_37114, label %dec_label_pc_37105

dec_label_pc_37105:                               ; preds = %dec_label_pc_370eb
  %27 = inttoptr i64 %stack_var_-848.0.reload to ptr
  %28 = and i64 %1, 4294967295
  %29 = inttoptr i64 %28 to ptr
  call void @_ZdaPv(ptr %27, ptr %29)
  br label %dec_label_pc_37114

dec_label_pc_37114:                               ; preds = %dec_label_pc_37105, %dec_label_pc_370eb
  %30 = call i64 @__readfsqword(i64 40)
  %31 = icmp eq i64 %2, %30
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %31, label %dec_label_pc_37129, label %dec_label_pc_37124

dec_label_pc_37124:                               ; preds = %dec_label_pc_37114
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_37129

dec_label_pc_37129:                               ; preds = %dec_label_pc_37124, %dec_label_pc_37114
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_42e9b:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_531bc, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

