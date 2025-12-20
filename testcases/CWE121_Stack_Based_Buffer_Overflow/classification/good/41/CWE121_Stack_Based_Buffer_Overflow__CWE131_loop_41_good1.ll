@global_var_1000 = external global ptr
@global_var_c0760 = external constant [4 x i8]
@global_var_fff = external global i32

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_4ca0a:
  %storemerge2.reg2mem = alloca i64, align 8
  %rdi = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = ptrtoint ptr %data to i64
  %3 = add i64 %0, -48
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_4ca5b

dec_label_pc_4ca5b:                               ; preds = %dec_label_pc_4ca5b, %dec_label_pc_4ca0a
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %4 = mul i64 %storemerge2.reload, 4
  %5 = add i64 %4, %2
  %6 = add i64 %3, %4
  %7 = inttoptr i64 %6 to ptr
  %8 = load i32, ptr %7, align 4
  %9 = inttoptr i64 %5 to ptr
  store i32 %8, ptr %9, align 4
  %10 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %10, 10
  store i64 %10, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_4ca84, label %dec_label_pc_4ca5b

dec_label_pc_4ca84:                               ; preds = %dec_label_pc_4ca5b
  %11 = bitcast ptr %rdi to ptr
  %12 = load i32, ptr %11, align 8
  call void @printIntLine(i32 %12)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %1, %13
  br i1 %14, label %dec_label_pc_4caa6, label %dec_label_pc_4caa1

dec_label_pc_4caa1:                               ; preds = %dec_label_pc_4ca84
  call void @__stack_chk_fail()
  br label %dec_label_pc_4caa6

dec_label_pc_4caa6:                               ; preds = %dec_label_pc_4caa1, %dec_label_pc_4ca84
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_4caa8:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca ptr, align 8
  %0 = ptrtoint ptr %stack_var_-24 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-24, align 8
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_4caf9

dec_label_pc_4caf9:                               ; preds = %dec_label_pc_4caf9, %dec_label_pc_4caa8
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_4cb10, label %dec_label_pc_4caf9

dec_label_pc_4cb10:                               ; preds = %dec_label_pc_4caf9
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 48
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  %6 = inttoptr i64 %5 to ptr
  store ptr %6, ptr %stack_var_-24, align 8
  call void @anon0(ptr %6)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  br i1 %8, label %dec_label_pc_4cb6e, label %dec_label_pc_4cb69

dec_label_pc_4cb69:                               ; preds = %dec_label_pc_4cb10
  call void @__stack_chk_fail()
  br label %dec_label_pc_4cb6e

dec_label_pc_4cb6e:                               ; preds = %dec_label_pc_4cb69, %dec_label_pc_4cb10
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

