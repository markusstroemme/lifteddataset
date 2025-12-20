@global_var_1000 = external global ptr
@global_var_c0760 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_54db0:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %data_-72 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-72 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_54e01

dec_label_pc_54e01:                               ; preds = %dec_label_pc_54e01, %dec_label_pc_54db0
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_54e18, label %dec_label_pc_54e01

dec_label_pc_54e18:                               ; preds = %dec_label_pc_54e01
  %4 = bitcast ptr %stack_var_-56 to ptr
  call void @anon0(ptr nonnull %4)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %1, %5
  br i1 %6, label %dec_label_pc_54e7e, label %dec_label_pc_54e79

dec_label_pc_54e79:                               ; preds = %dec_label_pc_54e18
  call void @__stack_chk_fail()
  br label %dec_label_pc_54e7e

dec_label_pc_54e7e:                               ; preds = %dec_label_pc_54e79, %dec_label_pc_54e18
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_54f24:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %dataArray to i64
  %2 = add i64 %1, 16
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  store i64 0, ptr %stack_var_-56, align 8
  %5 = inttoptr i64 %4 to ptr
  %6 = call ptr @memcpy(ptr %5, ptr nonnull %stack_var_-56, i32 40)
  %7 = inttoptr i64 %4 to ptr
  %8 = load i32, ptr %7, align 4
  call void @printIntLine(i32 %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_54fb1, label %dec_label_pc_54fac

dec_label_pc_54fac:                               ; preds = %dec_label_pc_54f24
  call void @__stack_chk_fail()
  br label %dec_label_pc_54fb1

dec_label_pc_54fb1:                               ; preds = %dec_label_pc_54fac, %dec_label_pc_54f24
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_a0716:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_c0760, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

