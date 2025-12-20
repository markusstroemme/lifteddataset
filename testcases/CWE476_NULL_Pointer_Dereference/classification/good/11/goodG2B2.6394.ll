@global_var_4a578 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_18c01:
  %tmpData_-32.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_18c40, label %dec_label_pc_18c2a

dec_label_pc_18c2a:                               ; preds = %dec_label_pc_18c01
  store i32 0, ptr %stack_var_-24, align 4
  %3 = ptrtoint ptr %stack_var_-24 to i64
  store i64 %3, ptr %tmpData_-32.0.reg2mem, align 8
  br label %dec_label_pc_18c40

dec_label_pc_18c40:                               ; preds = %dec_label_pc_18c2a, %dec_label_pc_18c01
  %4 = call i32 @globalReturnsTrue()
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %dec_label_pc_18c5b, label %dec_label_pc_18c4e

dec_label_pc_18c4e:                               ; preds = %dec_label_pc_18c40
  %tmpData_-32.0.reload = load i64, ptr %tmpData_-32.0.reg2mem, align 8
  %6 = inttoptr i64 %tmpData_-32.0.reload to ptr
  %7 = load i32, ptr %6, align 4
  call void @printIntLine(i32 %7)
  br label %dec_label_pc_18c5b

dec_label_pc_18c5b:                               ; preds = %dec_label_pc_18c4e, %dec_label_pc_18c40
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_18c70, label %dec_label_pc_18c6b

dec_label_pc_18c6b:                               ; preds = %dec_label_pc_18c5b
  call void @__stack_chk_fail()
  br label %dec_label_pc_18c70

dec_label_pc_18c70:                               ; preds = %dec_label_pc_18c6b, %dec_label_pc_18c5b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3cb8a:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a578, i64 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_3d03f:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

