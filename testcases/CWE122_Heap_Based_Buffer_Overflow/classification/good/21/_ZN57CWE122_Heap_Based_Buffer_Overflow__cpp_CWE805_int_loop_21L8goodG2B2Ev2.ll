@global_var_609dc = external constant [4 x i8]
@0 = external global i32
@global_var_7f1ac = external local_unnamed_addr global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_37893:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_7f1ac, align 4
  %1 = icmp eq i32 %0, 0
  store ptr %arg1, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_378bb, label %dec_label_pc_378ad

dec_label_pc_378ad:                               ; preds = %dec_label_pc_37893
  %2 = call i64 @_Znam(i64 400)
  %3 = inttoptr i64 %2 to ptr
  store ptr %3, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_378bb

dec_label_pc_378bb:                               ; preds = %dec_label_pc_378ad, %dec_label_pc_37893
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  %4 = ptrtoint ptr %stack_var_-16.0.reload to i64
  ret i64 %4
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_378c1:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = ptrtoint ptr %stack_var_-8 to i64
  %3 = call i64 @__readfsqword(i64 40)
  store i32 1, ptr @global_var_7f1ac, align 4
  %4 = call i64 @anon0(ptr null)
  %5 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %5, i64 0, i64 50)
  %6 = add i64 %2, -416
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_3792e

dec_label_pc_3792e:                               ; preds = %dec_label_pc_3792e, %dec_label_pc_378c1
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %7 = mul i64 %storemerge1.reload, 4
  %8 = add i64 %7, %4
  %9 = add i64 %6, %7
  %10 = inttoptr i64 %9 to ptr
  %11 = load i32, ptr %10, align 4
  %12 = inttoptr i64 %8 to ptr
  store i32 %11, ptr %12, align 4
  %13 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %13, 100
  store i64 %13, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_37969, label %dec_label_pc_3792e

dec_label_pc_37969:                               ; preds = %dec_label_pc_3792e
  %14 = inttoptr i64 %4 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %16 = icmp eq i64 %4, 0
  br i1 %16, label %dec_label_pc_37992, label %dec_label_pc_37983

dec_label_pc_37983:                               ; preds = %dec_label_pc_37969
  %17 = inttoptr i64 %4 to ptr
  %18 = and i64 %1, 4294967295
  %19 = inttoptr i64 %18 to ptr
  call void @_ZdaPv(ptr %17, ptr %19)
  br label %dec_label_pc_37992

dec_label_pc_37992:                               ; preds = %dec_label_pc_37983, %dec_label_pc_37969
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %3, %20
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %21, label %dec_label_pc_379a7, label %dec_label_pc_379a2

dec_label_pc_379a2:                               ; preds = %dec_label_pc_37992
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_379a7

dec_label_pc_379a7:                               ; preds = %dec_label_pc_379a2, %dec_label_pc_37992
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

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

