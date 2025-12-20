@global_var_4a578 = external constant [4 x i8]

define i32 @staticReturnsTrue.622() local_unnamed_addr {
dec_label_pc_1843b:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_185dc:
  %tmpData_-32.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsTrue.622()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_1861b, label %dec_label_pc_18605

dec_label_pc_18605:                               ; preds = %dec_label_pc_185dc
  store i32 0, ptr %stack_var_-24, align 4
  %3 = ptrtoint ptr %stack_var_-24 to i64
  store i64 %3, ptr %tmpData_-32.0.reg2mem, align 8
  br label %dec_label_pc_1861b

dec_label_pc_1861b:                               ; preds = %dec_label_pc_18605, %dec_label_pc_185dc
  %4 = call i32 @staticReturnsTrue.622()
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %dec_label_pc_18636, label %dec_label_pc_18629

dec_label_pc_18629:                               ; preds = %dec_label_pc_1861b
  %tmpData_-32.0.reload = load i64, ptr %tmpData_-32.0.reg2mem, align 8
  %6 = inttoptr i64 %tmpData_-32.0.reload to ptr
  %7 = load i32, ptr %6, align 4
  call void @printIntLine(i32 %7)
  br label %dec_label_pc_18636

dec_label_pc_18636:                               ; preds = %dec_label_pc_18629, %dec_label_pc_1861b
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_1864b, label %dec_label_pc_18646

dec_label_pc_18646:                               ; preds = %dec_label_pc_18636
  call void @__stack_chk_fail()
  br label %dec_label_pc_1864b

dec_label_pc_1864b:                               ; preds = %dec_label_pc_18646, %dec_label_pc_18636
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3cb8a:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a578, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

