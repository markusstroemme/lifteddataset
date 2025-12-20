@global_var_1000 = external global ptr
@global_var_c0760 = external constant [4 x i8]
@global_var_fff = external global i32

define void @anon2() local_unnamed_addr {
dec_label_pc_4d528:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca ptr, align 8
  %0 = ptrtoint ptr %stack_var_-24 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-24, align 8
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_4d579

dec_label_pc_4d579:                               ; preds = %dec_label_pc_4d579, %dec_label_pc_4d528
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_4d590, label %dec_label_pc_4d579

dec_label_pc_4d590:                               ; preds = %dec_label_pc_4d579
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
  br i1 %8, label %dec_label_pc_4d5ee, label %dec_label_pc_4d5e9

dec_label_pc_4d5e9:                               ; preds = %dec_label_pc_4d590
  call void @__stack_chk_fail()
  br label %dec_label_pc_4d5ee

dec_label_pc_4d5ee:                               ; preds = %dec_label_pc_4d5e9, %dec_label_pc_4d590
  ret void
}

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_4d624:
  call void @anon1(ptr %data)
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_4d6e1:
  %storemerge2.reg2mem = alloca i64, align 8
  %rdi = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = ptrtoint ptr %data to i64
  %3 = add i64 %0, -48
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_4d732

dec_label_pc_4d732:                               ; preds = %dec_label_pc_4d732, %dec_label_pc_4d6e1
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
  br i1 %exitcond, label %dec_label_pc_4d75b, label %dec_label_pc_4d732

dec_label_pc_4d75b:                               ; preds = %dec_label_pc_4d732
  %11 = bitcast ptr %rdi to ptr
  %12 = load i32, ptr %11, align 8
  call void @printIntLine(i32 %12)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %1, %13
  br i1 %14, label %dec_label_pc_4d77d, label %dec_label_pc_4d778

dec_label_pc_4d778:                               ; preds = %dec_label_pc_4d75b
  call void @__stack_chk_fail()
  br label %dec_label_pc_4d77d

dec_label_pc_4d77d:                               ; preds = %dec_label_pc_4d778, %dec_label_pc_4d75b
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

