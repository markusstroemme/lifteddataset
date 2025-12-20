@global_var_1000 = external global ptr
@global_var_c0760 = external constant [4 x i8]
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_4a208:
  %storemerge2.reg2mem = alloca i64, align 8
  %.reg2mem = alloca ptr, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-72 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-72, align 8
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_4a267

dec_label_pc_4a267:                               ; preds = %dec_label_pc_4a267, %dec_label_pc_4a208
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_4a27e, label %dec_label_pc_4a267

dec_label_pc_4a27e:                               ; preds = %dec_label_pc_4a267
  %4 = ptrtoint ptr %stack_var_-8 to i64
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 48
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %5 = add i64 %0, %constexpr3
  %6 = and i64 %5, -16
  %7 = inttoptr i64 %6 to ptr
  store ptr %7, ptr %stack_var_-72, align 8
  %8 = add i64 %4, -48
  store ptr %7, ptr %.reg2mem, align 8
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_4a2ed

dec_label_pc_4a2ed:                               ; preds = %dec_label_pc_4a2ed, %dec_label_pc_4a27e
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %.reload = load ptr, ptr %.reg2mem, align 8
  %9 = mul i64 %storemerge2.reload, 4
  %10 = ptrtoint ptr %.reload to i64
  %11 = add i64 %9, %10
  %12 = add i64 %8, %9
  %13 = inttoptr i64 %12 to ptr
  %14 = load i32, ptr %13, align 4
  %15 = inttoptr i64 %11 to ptr
  store i32 %14, ptr %15, align 4
  %16 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %16, 10
  %17 = load ptr, ptr %stack_var_-72, align 8
  store ptr %17, ptr %.reg2mem, align 8
  store i64 %16, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_4a316, label %dec_label_pc_4a2ed

dec_label_pc_4a316:                               ; preds = %dec_label_pc_4a2ed
  %18 = load i32, ptr %17, align 4
  call void @printIntLine(i32 %18)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %1, %19
  br i1 %20, label %dec_label_pc_4a338, label %dec_label_pc_4a333

dec_label_pc_4a333:                               ; preds = %dec_label_pc_4a316
  call void @__stack_chk_fail()
  br label %dec_label_pc_4a338

dec_label_pc_4a338:                               ; preds = %dec_label_pc_4a333, %dec_label_pc_4a316
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_a0716:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_c0760, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

