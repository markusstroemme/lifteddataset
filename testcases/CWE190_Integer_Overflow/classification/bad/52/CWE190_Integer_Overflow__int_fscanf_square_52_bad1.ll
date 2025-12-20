@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr
@global_var_842de = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_240ad:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_b8080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_842de)
  call void @anon1(i32 0)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_24110, label %dec_label_pc_2410b

dec_label_pc_2410b:                               ; preds = %dec_label_pc_240ad
  call void @__stack_chk_fail()
  br label %dec_label_pc_24110

dec_label_pc_24110:                               ; preds = %dec_label_pc_2410b, %dec_label_pc_240ad
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_241bd:
  call void @anon2(i32 %data)
  ret void
}

define void @anon2(i32 %data) local_unnamed_addr {
dec_label_pc_24211:
  %0 = mul i32 %data, %data
  call void @printIntLine(i32 %0)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

