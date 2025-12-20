@global_var_4c360 = external constant [21 x i8]
@global_var_641a0 = external local_unnamed_addr global i32

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_24f77:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_641a0, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_24fa2, label %dec_label_pc_24f91

dec_label_pc_24f91:                               ; preds = %dec_label_pc_24f77
  call void @printLine(ptr @global_var_4c360)
  store ptr %data, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_24fc8

dec_label_pc_24fa2:                               ; preds = %dec_label_pc_24f77
  %2 = call ptr @malloc(i32 100)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_24fc1, label %dec_label_pc_24fb7

dec_label_pc_24fb7:                               ; preds = %dec_label_pc_24fa2
  call void @exit(i32 -1)
  unreachable

dec_label_pc_24fc1:                               ; preds = %dec_label_pc_24fa2
  %5 = bitcast ptr %2 to ptr
  store i8 0, ptr %5, align 1
  store ptr %5, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_24fc8

dec_label_pc_24fc8:                               ; preds = %dec_label_pc_24fc1, %dec_label_pc_24f91
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  ret ptr %stack_var_-16.0.reload
}

define void @anon1() local_unnamed_addr {
dec_label_pc_24fce:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr @global_var_641a0, align 4
  %1 = call ptr @anon0(ptr null)
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = bitcast ptr %stack_var_-120 to ptr
  %4 = call ptr @strncat(ptr %1, ptr nonnull %3, i32 100)
  call void @printLine(ptr %1)
  %5 = bitcast ptr %1 to ptr
  call void @free(ptr %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_2506a, label %dec_label_pc_25065

dec_label_pc_25065:                               ; preds = %dec_label_pc_24fce
  call void @__stack_chk_fail()
  br label %dec_label_pc_2506a

dec_label_pc_2506a:                               ; preds = %dec_label_pc_25065, %dec_label_pc_24fce
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3deb3:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3ded6, label %dec_label_pc_3deca

dec_label_pc_3deca:                               ; preds = %dec_label_pc_3deb3
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3ded6

dec_label_pc_3ded6:                               ; preds = %dec_label_pc_3deca, %dec_label_pc_3deb3
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strncat(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

